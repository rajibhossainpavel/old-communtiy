import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/next_point_controller.dart';
import 'package:oshiruco_app/controller/point_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/next_point_state/next_point_state.dart';
import 'package:oshiruco_app/state/point_state.dart';

final pointProvider =
    StateNotifierProvider.autoDispose<PointController, PointState>(
  (ref) => PointController(
    ref.read(uuidProvider),
    usersRepository: ref.read(
      usersRepositoryProvider,
    ),
    pointsRepository: ref.read(
      pointsRepositoryProvider,
    ),
  ),
);

final nextPointProvider =
    StateNotifierProvider<NextPointController, NextPointState>(
  (ref) => NextPointController(
    networkRepository: ref.read(
      netWorkRepositoryProvider,
    ),
  ),
);
