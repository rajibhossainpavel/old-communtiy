import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/controller/friend_filtering_controller.dart';
import 'package:oshiruco_app/controller/friend_screen_controller.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/filter_type.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/provider/friend_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/filtering_rankup_promotion.dart';
import 'package:oshiruco_app/widget/component/friend/filtering/filter_tile.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

class FilteringScreen extends HookWidget {
  const FilteringScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: oshirucoAppBar(title: '絞り込み'),
      body: _FilteringBody(),
    );
  }
}

class _FilteringBody extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(filteringProvider.notifier);
    final friendListController = ref.watch(friendScreenProvider.notifier);
    final state = ref.watch(filteringProvider);

    final screenHeight = MediaQuery.of(context).size.height;

    // 会員ランクアップ案内の常時表示部分を表示する場合は true
    final showRankupPromotion = useState(true);

    // 会員ランクアップ案内のボトムシートを表示する場合は true
    final showRankupPromotionSheet = useState(true);

    // 会員ランクアップ案内のボトムシートを閉じるアニメーションが完了した場合は true
    // 会員ランクアップ案内のボトムシートを表示しない場合も true
    final closeAnimationEnded = useState(false);

    final create = useMemoized(() => controller.loadInitial());
    final snapshot = useFuture(create);

    showRankupPromotion.value = state.userStatus == UserStatus.osato ||
        state.userStatus == UserStatus.omochi;
    closeAnimationEnded.value = !showRankupPromotion.value;

    if (snapshot.hasError) {
      return const Center(
        child: Text('エラーが発生しました'),
      );
    }

    if (snapshot.connectionState != ConnectionState.done) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ..._filterTiles(state.userStatus),
                      if (state.userStatus == UserStatus.osato ||
                          state.userStatus == UserStatus.omochi) ...[
                        const SizedBox(height: 20),
                        _rankupPromotion(state.userStatus),
                      ]
                    ],
                  ),
                ),
              ),
              _actionButtons(
                context,
                controller,
                friendListController,
              ),
            ],
          ),
        ),
        if (!closeAnimationEnded.value)
          AnimatedPositioned(
            duration: kThemeAnimationDuration,
            top: showRankupPromotionSheet.value ? 40 : screenHeight,
            bottom: showRankupPromotionSheet.value ? 0 : -screenHeight,
            child: FilteringRankupPromotionSheet(
              userStatus: state.userStatus,
              onTapUpdateUserRank: () => routemaster.push('user_status'),
              onTapShowUserRankDetail: () => routemaster.push('membership'),
              onClose: () => showRankupPromotionSheet.value = false,
            ),
          ),
      ],
    );
  }

  // 検索項目の一覧
  List<Widget> _filterTiles(UserStatus userStatus) {
    switch (userStatus) {
      case UserStatus.osato:
        return [
          _pointDescription(),
          const _FilterTile(
            filterType: FilterType.gender,
            needPoint: true,
            topBorder: true,
          ),
          const _FilterTile(
            filterType: FilterType.age,
            needPoint: true,
          ),
          const _FilterTile(
            filterType: FilterType.livePlace,
            needPoint: true,
          ),
          const SizedBox(height: 20),
          const _FilterTile(
            filterType: FilterType.hasPhoto,
            needPoint: true,
            topBorder: true,
            disabled: true,
          ),
          const _FilterTile(
            filterType: FilterType.birthPlace,
            needPoint: true,
            disabled: true,
          ),
        ];

      case UserStatus.omochi:
        return [
          const _FilterTile(
            filterType: FilterType.gender,
            needPoint: false,
            topBorder: true,
          ),
          const _FilterTile(
            filterType: FilterType.hasPhoto,
            needPoint: false,
          ),
          _pointDescription(),
          const _FilterTile(
            filterType: FilterType.age,
            needPoint: true,
            topBorder: true,
          ),
          const _FilterTile(
            filterType: FilterType.livePlace,
            needPoint: true,
          ),
          const SizedBox(height: 20),
          const _FilterTile(
            filterType: FilterType.birthPlace,
            needPoint: true,
            topBorder: true,
            disabled: true,
          ),
        ];

      case UserStatus.oshiruco:
      case UserStatus.premium:
        return [
          const _FilterTile(
            filterType: FilterType.gender,
            needPoint: false,
            topBorder: true,
          ),
          const _FilterTile(
            filterType: FilterType.hasPhoto,
            needPoint: false,
          ),
          const _FilterTile(
            filterType: FilterType.age,
            needPoint: false,
          ),
          const _FilterTile(
            filterType: FilterType.livePlace,
            needPoint: false,
          ),
          const _FilterTile(
            filterType: FilterType.birthPlace,
            needPoint: false,
          ),
        ];
    }
  }

  // 画面上部に表示する「ポイントで検索できます」の説明
  Widget _pointDescription() {
    return Column(
      children: [
        const SizedBox(height: 20),
        Assets.images.filteringTitleInform.image(height: 30),
        const SizedBox(height: 20),
        const Text(
          'ポイントでも検索機能がご利用できます。',
          style: OshirucoTextStyles.small,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: OshirucoTextStyles.small,
            children: [
              TextSpan(text: '1項目の検索で '),
              TextSpan(
                text: '30',
                style: OshirucoTextStyles.largeGreenBold,
              ),
              TextSpan(
                text: 'ポイント',
                style: OshirucoTextStyles.smallGreen,
              ),
              TextSpan(text: ' 必要です。'),
            ],
          ),
        ),
        const Text(
          '検索したい項目にチェックを入れてください。',
          style: OshirucoTextStyles.small,
        ),
        const SizedBox(height: 20)
      ],
    );
  }

  // 画面下部に表示する会員ランク変更の案内
  Widget _rankupPromotion(UserStatus userStatus) {
    final isOsato = userStatus == UserStatus.osato;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            isOsato
                ? '「プロフィール写真の有無」は、おもち会員以上、「出身地」は、おしるこ会員以上で利用できる機能です。'
                : '「出身地」は、おしるこ会員以上で利用できる機能です。',
            style: OshirucoTextStyles.small,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
            text: TextSpan(
              style: OshirucoTextStyles.small,
              children: [
                TextSpan(
                  text: isOsato
                      ? '会員ランクを変更すると「性別」「おしるこ年齢」「居住地」も'
                      : '会員ランクを変更すると「おしるこ年齢」「居住地」も',
                ),
                const TextSpan(
                  text: 'ポイントの消費をせず何度でも',
                  style: OshirucoTextStyles.smallBold,
                ),
                const TextSpan(text: '検索できます！検索を利用してどんどん気になる仲間を増やしましょう！')
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: FlexibleRoundButton(
            label: '会員ランクを変更する',
            onTap: () => routemaster.push('user_status'),
            color: OshirucoColors.text,
            textStyle: OshirucoTextStyles.mediumWhiteBold,
            filled: true,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: FlexibleRoundButton(
            label: '会員ランクの詳細をみる',
            onTap: () => routemaster.push('membership'),
            color: OshirucoColors.green,
            textStyle: OshirucoTextStyles.mediumGreenBold,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  // リセット/検索実行のボタン
  Widget _actionButtons(
    BuildContext context,
    FriendFilteringController controller,
    FriendScreenController friendListController,
  ) {
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => controller.onPressedReset(),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: const Text(
                  'リセット',
                  style: OshirucoTextStyles.mediumGrey,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () async {
                final enoughPoint = await controller.checkPoint(context);
                if (enoughPoint) {
                  final success = await friendListController
                      .reload(controller.selectedFilterProperty());
                  if (success) {
                    controller.usePoint();
                    Navigator.of(context).pop();
                  }
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: OshirucoColors.green,
                ),
                child: const Text(
                  'この条件で検索',
                  style: OshirucoTextStyles.mediumWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterTile extends HookConsumerWidget {
  final FilterType filterType;
  final bool needPoint;
  final bool topBorder;
  final bool disabled;

  const _FilterTile({
    Key? key,
    required this.filterType,
    this.needPoint = true,
    this.topBorder = false,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(filteringProvider.notifier);
    final state = ref.watch(filteringProvider);

    return FilterTile(
      type: filterType,
      onUpdate: controller.updateValue,
      onChangedSelect: controller.changedSelect,
      checked: state.checkMap[filterType] ?? false,
      selectedValue: state.getSelectedValue(filterType),
      needPoint: needPoint,
      topBorder: topBorder,
      disabled: disabled,
    );
  }
}
