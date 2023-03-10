import 'package:flutter/cupertino.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/repository/setting_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/visit_history_setting_state.dart';

class VisitHistorySettingController
    extends StateNotifier<VisitHistorySettingState> {
  VisitHistorySettingController({
    required String uuid,
    required UsersRepositoryInterface usersRepository,
    required SettingRepositoryInterface settingRepository,
  })  : _uuid = uuid,
        _usersRepository = usersRepository,
        _settingRepository = settingRepository,
        super(const VisitHistorySettingState());

  final String _uuid;
  final UsersRepositoryInterface _usersRepository;
  final SettingRepositoryInterface _settingRepository;

  Future<void> fetchVisitHistoryEnable(BuildContext context) async {
    try {
      final user = await _usersRepository.fetchUserByUuid(_uuid);
      state = state.copyWith(visitHistoryEnable: user.user.enableVisitHistory);
    } catch (e) {
      // todo handle error
    }
  }

  Future<void> updateVisitHistoryEnable(bool enable) async {
    try {
      await _settingRepository.updateVisitHistory(enable);
      state = state.copyWith(visitHistoryEnable: enable);
    } on Exception catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }
}
