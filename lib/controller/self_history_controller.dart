import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/model/enum/self_history_status.dart';
import 'package:oshiruco_app/repository/self_history_repository.dart';
import 'package:oshiruco_app/state/self_history_state/self_history_state.dart';

class SelfHistoryController extends StateNotifier<SelfHistoryState> {
  SelfHistoryController({
    required SelfHistoryRepository selfhistoryRepository,
    required String uuid,
  })  : _selfHistoryRepository = selfhistoryRepository,
        _targetUuid = uuid,
        super(const SelfHistoryState());

  final String _targetUuid;

  void setNickName(String nickName) {
    state = state.copyWith(nickName: nickName);
  }

  final SelfHistoryRepository _selfHistoryRepository;
  Future<void> loadInitialData(BuildContext context) async {
    try {
      final response = await _selfHistoryRepository.fetchSelfHistory(
        targetUUID: _targetUuid,
        age: 10,
        status: SelfHistoryStatus.published,
      );
      state = state.copyWith(
        selfHistories: response.selfHistory,
      );
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
      rethrow;
    }
  }
}
