import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/provider/point_provider.dart';
import 'package:oshiruco_app/widget/component/white_round_background.dart';

class NextPointsCard extends HookConsumerWidget {
  const NextPointsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(nextPointProvider.notifier);
    final create = useMemoized(
      () => controller.loadInitialData(),
    );
    final state = ref.watch(nextPointProvider);

    final snapshot = useFuture(create);

    if (snapshot.error != null) {
      return _errorContent();
    }

    if (snapshot.connectionState == ConnectionState.waiting ||
        state.isLoading) {
      return _loadingContent();
    }
    if (state.nextPoint == 0 && state.nextPointTime.isEmpty) {
      return _emptyContent();
    }
    return _normalContent(
      points: state.nextPoint,
      date: state.nextPointTime,
    );
  }

  Widget _normalContent({
    required int points,
    required String date,
  }) {
    return RoundBackGround(
      key: key,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '付与日',
                style: OshirucoTextStyles.mediumGreyBold,
              ),
              Text(
                date,
                style: OshirucoTextStyles.medium,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '付与数',
                style: OshirucoTextStyles.mediumGreyBold,
              ),
              Text(
                '$pointsポイント',
                style: OshirucoTextStyles.medium,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _loadingContent() {
    return const RoundBackGround(
      child: Center(
        child: OshirucoCircleProgressIndicator(),
      ),
    );
  }

  Widget _errorContent() {
    return const RoundBackGround(
      child: Center(
        child: Text('エラーが発生しました。'),
      ),
    );
  }

  Widget _emptyContent() {
    return const RoundBackGround(
      child: Center(
        child: Text(
          'ポイント付与の予定はありません',
        ),
      ),
    );
  }
}
