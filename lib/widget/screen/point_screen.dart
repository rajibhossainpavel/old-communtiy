import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:intl/intl.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/controller/point_controller.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/provider/point_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/point_state.dart';
import 'package:oshiruco_app/widget/component/exchange_button.dart';
import 'package:oshiruco_app/widget/component/next_points_card.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';
import 'package:oshiruco_app/widget/component/purchase_button.dart';
import 'package:oshiruco_app/widget/component/white_round_background.dart';

class PointScreen extends HookConsumerWidget {
  PointScreen({Key? key}) : super(key: key);
  final purchasePointKey = GlobalKey();
  final exchangePointKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(pointProvider.notifier);
    final state = ref.watch(pointProvider);
    return Scaffold(
      backgroundColor: OshirucoColors.background,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'ポイント',
          style: OshirucoTextStyles.largeWhite,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.of(context).pop(state.points),
        ),
        centerTitle: true,
      ),
      body: _body(
        context,
        ref,
        controller: controller,
        state: state,
      ),
    );
  }

  Widget _body(
    BuildContext context,
    WidgetRef ref, {
    required PointController controller,
    required PointState state,
  }) {
    //fetching in_app_purchase products
    Map<String, ProductDetails> idProductMapper = {};
    controller
        .fetchAmountProductsMapper()
        .then((value) => idProductMapper = value);

    final create = useMemoized(
      () => controller.loadInitialData(context),
    );
    final snapshot = useFuture(create);
    if (snapshot.error != null) {
      return const Center(child: Text('error'));
    }

    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }
    final state = ref.watch(pointProvider);
    return Stack(
      children: [
        // Note: Use this instead of ListView to avoid rebuilding of NextPointsCard
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${state.name}さんの',
                    style: OshirucoTextStyles.medium,
                  ),
                  const Text(
                    '保有ポイント',
                    style: OshirucoTextStyles.largeBold,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              RoundBackGround(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Assets.svgs.iconPoint.svg(
                          width: 36,
                          color: OshirucoColors.green,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'ポイント',
                          style: OshirucoTextStyles.mediumGreyBold,
                        ),
                        const Spacer(),
                        Text(
                          '${state.points}ポイント',
                          style: OshirucoTextStyles.mediumBold,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Assets.svgs.iconLike.svg(
                          width: 36,
                          color: OshirucoColors.red,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          '挨拶',
                          style: OshirucoTextStyles.mediumGreyBold,
                        ),
                        const Spacer(),
                        Text(
                          '${state.likes}挨拶',
                          style: OshirucoTextStyles.mediumBold,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              GestureDetector(
                onTap: () {
                  routemaster.push('history');
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ポイント履歴を確認する＞',
                      style: OshirucoTextStyles.mediumGreen,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              GestureDetector(
                onTap: () {
                  if (purchasePointKey.currentContext != null) {
                    Scrollable.ensureVisible(purchasePointKey.currentContext!);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ポイントを購入する＞',
                      style: OshirucoTextStyles.medium
                          .copyWith(color: OshirucoColors.textDarkRed),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              GestureDetector(
                onTap: () {
                  if (exchangePointKey.currentContext != null) {
                    Scrollable.ensureVisible(exchangePointKey.currentContext!);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ポイントを挨拶に交換する＞',
                      style: OshirucoTextStyles.medium
                          .copyWith(color: OshirucoColors.textDarkRed),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _label('次回のポイント付与'),
              const SizedBox(height: 8),
              const NextPointsCard(),
              const SizedBox(height: 40),
              _label('ポイント購入', key: purchasePointKey),
              const SizedBox(height: 8),
              _statuses(
                onTap: (int point) => controller.onPressedPurchaseButton(
                    context,
                    points: point,
                    idProductMapper: idProductMapper),
              ),
              const SizedBox(height: 40),
              _label('ポイントを挨拶に交換', key: exchangePointKey),
              const SizedBox(height: 8),
              _exchangeStatuses(
                onTap: (points, greetings) =>
                    controller.onPressedExchangeButton(context,
                        points: points, greetings: greetings),
              ),
              const SizedBox(height: 40),
            ],
          ),
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

  Widget _statuses({
    required Function(int) onTap,
  }) {
    List<Map<String, int>> data = [
      {'point': 5, 'amount': 650, 'bonusPoint': 3},
      {'point': 9, 'amount': 1100, 'bonusPoint': 9},
      {'point': 30, 'amount': 3000, 'bonusPoint': 30},
      {'point': 52, 'amount': 5000, 'bonusPoint': 52},
      {'point': 105, 'amount': 10000, 'bonusPoint': 145},
      {'point': 220, 'amount': 20000, 'bonusPoint': 400}
    ];
    if (Platform.isIOS) {
      data.add({'point': 650, 'amount': 48800, 'bonusPoint': 1100});
    }
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          for (var el in data) ...[
            _purchasePointCell(
              point: el['point']!,
              amount: el['amount']!,
              bonusPoint: el['bonusPoint']!,
              onTap: () => onTap(el['point']! + el['bonusPoint']!),
            ),
            const OshirucoDivider()
          ]
        ],
      ),
    );
  }

  Widget _exchangeStatuses({
    required Function(int, int) onTap,
  }) {
    const data = [
      {'point': 5, 'likes': 5},
      {'point': 10, 'likes': 15},
      {'point': 20, 'likes': 30},
      {'point': 30, 'likes': 50},
      {'point': 40, 'likes': 70},
      {'point': 50, 'likes': 100},
      {'point': 100, 'likes': 300}
    ];
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          for (var el in data) ...[
            _exchangePointsCell(
              el['point']!,
              el['likes']!,
              onTap: onTap,
            ),
            const OshirucoDivider()
          ]
        ],
      ),
    );
  }

  Widget _purchasePointCell({
    required int point,
    required int amount,
    required int bonusPoint,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.svgs.iconPoint.svg(
            width: 24,
            color: OshirucoColors.green,
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$pointポイント',
                  style: OshirucoTextStyles.medium,
                ),
                Text(
                  '+おまけ$bonusPointポイント',
                  style: OshirucoTextStyles.smallRed,
                ),
                Text(
                  '合計${point + bonusPoint}ポイント',
                  style: OshirucoTextStyles.smallBold,
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          Text(
            NumberFormat.simpleCurrency().format(amount),
            style: OshirucoTextStyles.smallBold,
          ),
          const SizedBox(width: 12),
          PurchaseButton(
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

Widget _exchangePointsCell(
  int points,
  int greetings, {
  required Function(int, int) onTap,
}) {
  return GestureDetector(
    onTap: () => onTap(points, greetings),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Assets.svgs.iconPoint.svg(
            width: 24,
            color: OshirucoColors.green,
          ),
          Text(
            '$pointsポイントを',
            style: OshirucoTextStyles.medium,
          ),
          const SizedBox(width: 8),
          Assets.svgs.iconLike.svg(
            width: 24,
            color: OshirucoColors.red,
          ),
          Text(
            '$greetings挨拶に',
            style: OshirucoTextStyles.mediumBold,
          ),
          const Spacer(),
          ExchangeButton(
            () => onTap(points, greetings),
          ),
        ],
      ),
    ),
  );
}

Widget _label(String text, {Key? key}) {
  return Padding(
    key: key,
    padding: const EdgeInsets.only(left: 20),
    child: Text(
      text,
      style: OshirucoTextStyles.mediumGreyBold,
    ),
  );
}
