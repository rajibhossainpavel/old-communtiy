import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/date_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/transaction/transaction.dart';
import 'package:oshiruco_app/provider/point_history_controller_provider.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';

class PointHistoryScreen extends HookConsumerWidget {
  const PointHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: oshirucoAppBar(title: 'ポイント履歴'),
      body: _body(ref),
    );
  }

  Widget _body(WidgetRef ref) {
    final state = ref.watch(pointHistoryControllerProvider);
    final controller = ref.watch(pointHistoryControllerProvider.notifier);

    final create = useMemoized(
      () => controller.loadInitialData(),
    );
    final snapshot = useFuture(create);

    if (snapshot.hasError) {
      return const Center(
        child: Text(
          'エラーが発生しました。',
          style: OshirucoTextStyles.medium,
        ),
      );
    }

    if (snapshot.connectionState != ConnectionState.done) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }

    final transactions = state.transactions;
    return RefreshIndicator(
      onRefresh: () {
        return controller.loadInitialData();
      },
      child: ListView.separated(
        itemBuilder: (context, index) {
          if (index == transactions.length) {
            controller.onReachBottom();

            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: OshirucoCircleProgressIndicator(),
              ),
            );
          }

          final transaction = transactions[index];
          return _pointHistoryCell(transaction);
        },
        separatorBuilder: (context, index) => const OshirucoDivider(),
        itemCount: transactions.length +
            (state.hasNext ? 1 : 0), // 続きがある場合は末尾にくるくるを表示するため+1する
      ),
    );
  }

  Widget _pointHistoryCell(Transaction transaction) {
    final datetime = DateTime.parse(transaction.createdAt);
    // NOTE backend側のresponse修正
    final kindName = transaction.kind.endsWith('point')
        ? 'ポイント購入'
        : transaction.kindName.replaceAll('いいね！', '挨拶');
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            datetime.yyyymmdd(delimiter: '-'),
            style: OshirucoTextStyles.smallGrey,
          ),
          const SizedBox(width: 12),
          Text(
            kindName,
            style: OshirucoTextStyles.mediumBold,
          ),
          const Spacer(),
          Assets.svgs.iconPoint.svg(color: OshirucoColors.green, width: 32),
          Text(
            transaction.deltaString,
            style: OshirucoTextStyles.mediumBold,
          ),
        ],
      ),
    );
  }
}
