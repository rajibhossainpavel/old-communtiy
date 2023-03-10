import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/my_page_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/my_page_state.dart';

final myPageControllerProvider =
    StateNotifierProvider.autoDispose<MyPageController, MyPageState>(
  (ref) => MyPageController(
    uuid: ref.read(uuidProvider),
    usersRepository: ref.read(usersRepositoryProvider),
  ),
);
