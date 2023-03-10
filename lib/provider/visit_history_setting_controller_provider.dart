import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/visit_history_setting_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/visit_history_setting_state.dart';

final visitHistorySettingControllerProvider = StateNotifierProvider.autoDispose<
    VisitHistorySettingController, VisitHistorySettingState>(
  (ref) => VisitHistorySettingController(
    uuid: ref.read(uuidProvider),
    usersRepository: ref.read(usersRepositoryProvider),
    settingRepository: ref.read(settingRepositoryProvider),
  ),
);
