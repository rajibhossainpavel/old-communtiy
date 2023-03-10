import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/user_status_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/user_status_state.dart';

final userStatusProvider =
    StateNotifierProvider.autoDispose<UserStatusController, UserStatusState>(
  (ref) => UserStatusController(
    ref.read(uuidProvider),
    usersRepository: ref.read(usersRepositoryProvider),
    pointsRepository: ref.read(pointsRepositoryProvider),
  ),
);
