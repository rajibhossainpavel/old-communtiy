import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/point_history_controller.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/point_history_state/point_history_state.dart';

final pointHistoryControllerProvider = StateNotifierProvider.autoDispose<
    PointHistoryController, PointHistoryState>(
  (ref) => PointHistoryController(
    pointsRepositoryInterface: ref.read(pointsRepositoryProvider),
  ),
);
