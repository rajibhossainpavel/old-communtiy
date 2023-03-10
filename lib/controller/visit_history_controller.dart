import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/repository/visit_history_repository.dart';
import 'package:oshiruco_app/state/visit_history_state.dart';

class VisitHistoryController extends StateNotifier<VisitHistoryState> {
  VisitHistoryController({
    required VisitHistoryRepositoryInterface visitHistoryRepository,
    required UsersRepositoryInterface usersRepository,
    required String uuid,
    required FlutterSecureStorage storage,
  })  : _visitHistoryRepository = visitHistoryRepository,
        _usersRepository = usersRepository,
        _uuid = uuid,
        _storage = storage,
        super(const VisitHistoryState());

  final VisitHistoryRepositoryInterface _visitHistoryRepository;
  final UsersRepositoryInterface _usersRepository;
  final FlutterSecureStorage _storage;

  final String _uuid;

  static const _keyLastDisplayedRankupPromotion =
      'lastDisplayedVisitHistoryRankupPromotion';

  /// 今日ランクアップを表示済みの場合は true
  Future<bool> isDisplayedRankupPromotionToday() async {
    final lastShowDate = DateTime.tryParse(
      await _storage.read(key: _keyLastDisplayedRankupPromotion) ?? '',
    );
    if (lastShowDate == null) {
      return false;
    }

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    return !lastShowDate.isBefore(today);
  }

  /// ランクアップ表示日時を更新
  Future<void> updateRankupPromotionDisplayDate() async {
    await _storage.write(
      key: _keyLastDisplayedRankupPromotion,
      value: DateTime.now().toIso8601String(),
    );
  }

  Future<void> fetchVisitHistory() async {
    final user = (await _usersRepository.fetchUserByUuid(_uuid)).user;
    final visitedUsers = await _visitHistoryRepository.fetch();

    state = state.copyWith(
      userStatus: user.status,
      visitedUsers: visitedUsers,
    );
  }
}
