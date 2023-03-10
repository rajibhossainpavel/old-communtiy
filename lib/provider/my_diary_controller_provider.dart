import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/user_diaries_controller.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/user_diaries_state/user_diaries_state.dart';

final userDiariesControllerProvider = StateNotifierProvider.autoDispose
    .family<UserDiariesController, UserDiariesState, String>(
  (ref, uuid) => UserDiariesController(
    uuid: uuid,
    diariesRepository: ref.read(diariesRepositoryProvider),
    usersRepository: ref.read(usersRepositoryProvider),
  ),
);
