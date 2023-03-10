import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/edit_my_page_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/provider/s3_client_provider.dart';
import 'package:oshiruco_app/state/edit_my_page_state.dart';

final editMyPageControllerProvider =
    StateNotifierProvider.autoDispose<EditMyPageController, EditMyPageState>(
  (ref) => EditMyPageController(
    uuid: ref.read(uuidProvider),
    userRepository: ref.read(userRepositoryProvider),
    usersRepository: ref.read(usersRepositoryProvider),
    s3Client: ref.read(s3ClientProvider),
  ),
);
