import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/provider/visit_history_controller_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';
import 'package:oshiruco_app/widget/component/visit_history_rankup_promotion.dart';
import 'package:oshiruco_app/widget/component/visit_history_user_list_tile.dart';

class VisitHistoryScreen extends StatelessWidget {
  const VisitHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OshirucoColors.background,
      appBar: oshirucoAppBar(title: '足あと'),
      body: const VisitHistoryScreenBase(),
    );
  }
}

class VisitHistoryScreenBase extends HookConsumerWidget {
  const VisitHistoryScreenBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;

    // 会員ランクアップ案内の常時表示部分を表示する場合は true
    final showRankupPromotion = useState(true);

    // 会員ランクアップ案内のボトムシートを表示する場合は true
    final showRankupPromotionSheet = useState(true);

    // 会員ランクアップ案内のボトムシートを閉じるアニメーションが完了した場合は true
    // 会員ランクアップ案内のボトムシートを表示しない場合も true
    final closeAnimationEnded = useState(false);

    final controller = ref.watch(visitHistoryControllerProvider.notifier);
    final create = useMemoized(
      () => controller.fetchVisitHistory(),
    );
    final snapshot = useFuture(create);

    useEffect(() {
      (() async {
        showRankupPromotionSheet.value =
            !(await controller.isDisplayedRankupPromotionToday());
        closeAnimationEnded.value = !showRankupPromotionSheet.value;
        await controller.updateRankupPromotionDisplayDate();
      }());
    }, []);

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

    final state = ref.watch(visitHistoryControllerProvider);
    final visitedUsers = state.visitedUsers;

    if (state.userStatus == UserStatus.osato) {
      return const _OsatoVisitHistory();
    }

    if (visitedUsers.isEmpty) {
      return _emptyState();
    }

    showRankupPromotion.value = state.userStatus != UserStatus.premium;
    closeAnimationEnded.value = !showRankupPromotion.value;

    return Stack(children: [
      ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: visitedUsers.length + (showRankupPromotion.value ? 1 : 0),
        itemBuilder: (context, index) {
          if (showRankupPromotion.value && index == visitedUsers.length) {
            // ランクアップのシートを表示している時は空の Container を表示
            return showRankupPromotionSheet.value
                ? Container()
                : VisitHistoryRankupPromotion(
                    userStatus: state.userStatus,
                    onTapUpdateUserRank: () => routemaster.push('user_status'),
                    onTapShowUserRankDetail: () =>
                        routemaster.push('membership'),
                  );
          }

          final user = visitedUsers[index];
          return VisitHistoryUserListTile(
            onTap: () => routemaster.push('detail/${user.uuid}'),
            user: user,
            createdAt: user.created,
          );
        },
        separatorBuilder: (context, index) => const OshirucoDivider(),
      ),
      if (!closeAnimationEnded.value)
        AnimatedPositioned(
          bottom: showRankupPromotionSheet.value ? 0 : -screenHeight,
          left: 0,
          right: 0,
          duration: kThemeAnimationDuration,
          onEnd: () => closeAnimationEnded.value = true,
          child: VisitHistoryRankupPromotionSheet(
            userStatus: state.userStatus,
            onTapUpdateUserRank: () => routemaster.push('user_status'),
            onTapShowUserRankDetail: () => routemaster.push('membership'),
            onClose: () => showRankupPromotionSheet.value = false,
          ),
        )
    ]);
  }

  Widget _emptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.images.noDataVisitHistory.image(width: 140),
          const SizedBox(height: 26),
          const Text(
            'まだ、足あとがありません',
            style: OshirucoTextStyles.mediumGreenBold,
          ),
          const SizedBox(height: 26),
          const Text(
            'ここには、あなたのプロフィールに\n訪れたお相手が、表示されます。',
            textAlign: TextAlign.center,
            style: OshirucoTextStyles.medium,
          ),
        ],
      ),
    );
  }
}

class _OsatoVisitHistory extends StatelessWidget {
  const _OsatoVisitHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BlurredVisitHistoryUserListTile(label: 'おさとう会員の方は\n足あとが閲覧できません。'),
        const Spacer(),
        VisitHistoryRankupPromotionSheet(
          userStatus: UserStatus.osato,
          onTapUpdateUserRank: () => routemaster.push('user_status'),
          onTapShowUserRankDetail: () => routemaster.push('membership'),
        ),
      ],
    );
  }
}
