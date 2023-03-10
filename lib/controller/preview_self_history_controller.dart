import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/model/enum/self_history_status.dart';
import 'package:oshiruco_app/repository/self_history_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/preview_self_history_state/preview_self_history_state.dart';

class PreviewSelfHistoryController
    extends StateNotifier<PreviewSelfHistoryState> {
  PreviewSelfHistoryController({
    required SelfHistoryRepositoryInterface selfHistoryRepository,
    required UsersRepositoryInterface usersRepository,
    required String uuid,
  })  : _repository = selfHistoryRepository,
        _uuid = uuid,
        _usersRepository = usersRepository,
        super(const PreviewSelfHistoryState());

  final SelfHistoryRepositoryInterface _repository;

  final String _uuid;

  final UsersRepositoryInterface _usersRepository;

  Future<void> loadInitialData() async {
    final response = await _repository.fetchSelfHistory(
      age: 10,
      status: SelfHistoryStatus.done,
    );
    final userRes = await _usersRepository.fetchUserByUuid(_uuid);

    state = state.copyWith(
      selfHistories: response.selfHistory,
      userName: userRes.user.nickname,
    );
  }
}
