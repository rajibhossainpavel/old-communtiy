import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/provider/user_status_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/green_outlined_button.dart';
import 'package:oshiruco_app/widget/component/next_points_card.dart';
import 'package:oshiruco_app/widget/component/status_detail_tile.dart';
import 'package:oshiruco_app/widget/component/subscription_cancel_text.dart';
import 'package:oshiruco_app/widget/component/white_round_background.dart';

class UserStatusScreen extends StatelessWidget {
  const UserStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OshirucoColors.background,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          '会員ランク',
          style: OshirucoTextStyles.largeWhite,
        ),
        centerTitle: true,
      ),
      body: const UserStatusScreenBase(),
    );
  }
}

class UserStatusScreenBase extends HookConsumerWidget {
  const UserStatusScreenBase({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(userStatusProvider.notifier);
    final create = useMemoized(
      () => controller.loadInitialData(context),
    );
    final snapshot = useFuture(create);
    if (snapshot.error != null) {
      return const Center(child: Text('error'));
    }
    if (snapshot.connectionState != ConnectionState.done) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }
    final state = ref.watch(userStatusProvider);
    final products = state.subscriptionProducts;
    return Stack(
      children: [
        ListView(
          children: [
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${state.nickName}さんの',
                  style: OshirucoTextStyles.medium,
                ),
                const Text(
                  '会員ランク',
                  style: OshirucoTextStyles.largeBold,
                ),
              ],
            ),
            const SizedBox(height: 20),
            _userStatusBar(state.currentUserStatus),
            const SizedBox(height: 20),
            _label('次回のポイント付与'),
            const SizedBox(height: 8),
            const NextPointsCard(),
            const SizedBox(height: 20),
            ..._updateStatusDescriptions(),
            const SizedBox(height: 20),
            _statuses(
              products: products,
              onTap: (product) => controller.onTapPurchaseButton(
                context,
                targetProductDetails: product,
              ),
              currentUserStatus: state.currentUserStatus,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GreenOutlinedButton(
                onTap: () {
                  routemaster.push('membership');
                },
                label: '会員ランクの詳細をみる',
              ),
            ),
            const SizedBox(height: 40),
            ..._downgradeDescriptions(),
          ],
        ),
        if (state.isLoading)
          const AbsorbPointer(
            absorbing: true,
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(OshirucoColors.green),
              ),
            ),
          ),
      ],
    );
  }

  Widget _userStatusBar(UserStatus status) {
    return RoundBackGround(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '会員ランク',
            style: OshirucoTextStyles.mediumGreyBold,
          ),
          const Spacer(),
          status.toSvg().svg(width: 40),
          const SizedBox(width: 8),
          Text(
            status.getTitle(),
            style: OshirucoTextStyles.mediumBold,
          ),
        ],
      ),
    );
  }

  List<Widget> _updateStatusDescriptions() {
    return [
      const Center(
        child: Text(
          '🎉割引💰特典🎁てんこ盛り🎉',
          style: OshirucoTextStyles.large,
        ),
      ),
      const SizedBox(height: 8),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          '有料会員になるとランクに合わせてポイントをGETできたり、仲間探しに便利になる機能が無制限に利用OK!!',
          style: OshirucoTextStyles.medium,
        ),
      ),
      const SizedBox(height: 8),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          'さらにおしるこ事務局が厳選したアイテムの割引交換や、オンライン限定イベントの参加できるなど、他にも特典がいっぱい!!',
          style: OshirucoTextStyles.medium,
        ),
      ),
    ];
  }

  Widget _statuses({
    required List<ProductDetails> products,
    required Function(ProductDetails) onTap,
    required UserStatus currentUserStatus,
  }) {
    final isActive = currentUserStatus == UserStatus.osato;
    return Container(
      color: Colors.white,
      child: Column(
        children: products.map(
          (product) {
            return StatusDetailTile.fromProductDetail(
              product: product,
              isActive: isActive,
              isAvailable: isActive ||
                  currentUserStatus ==
                      UserStatusExtension.fromProductID(product.id),
              onTap: () => onTap(product),
            );
          },
        ).toList(),
      ),
    );
  }

  List<Widget> _downgradeDescriptions() {
    return [
      const Center(
        child: Text(
          '有料会員の解除\nとダウングレードの方法',
          style: OshirucoTextStyles.largeBold,
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(height: 20),
      _label('解約の方法'),
      const SizedBox(height: 8),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SubscriptionCancelText(),
      ),
      const SizedBox(height: 28),
      // TODO(qkuronekop): downgradeの機構が実装された後comment Outする。
      // _label('ダウングレードの方法'),
      // const SizedBox(height: 8),
      // const Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 20),
      //   child: Text(
      //     '「おしるこ」の会員ランクをおしるこプレミアム会員からおもち会員などへ、'
      //     'ダウングレードしたい場合は、上記「解約の方法」に従って現状のコースを一度解約してから、'
      //     '変更してください。ただし、ポイントは消えません。',
      //     style: OshirucoTextStyles.medium,
      //   ),
      // ),
      const SizedBox(height: 40),
    ];
  }
}

Widget _label(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Text(
      text,
      style: OshirucoTextStyles.mediumGreyBold,
    ),
  );
}
