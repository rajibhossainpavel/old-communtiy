import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/model/transaction/transaction.dart';
import 'package:oshiruco_app/repository/points_repository.dart';
import 'package:oshiruco_app/state/point_history_state/point_history_state.dart';

class PointHistoryController extends StateNotifier<PointHistoryState> {
  PointHistoryController({
    required PointsRepositoryInterface pointsRepositoryInterface,
  }) : super(const PointHistoryState()) {
    _pointsRepository = pointsRepositoryInterface;
  }

  late final PointsRepositoryInterface _pointsRepository;

  Future<void> loadInitialData() async {
    try {
      // 最初は２ページ分取得しておく
      final transactions = await Future.wait([
        _getPointsTransaction(1),
        _getPointsTransaction(2),
      ]);

      state = PointHistoryState(
        transactions: transactions[0],
        nextTransactions: transactions[1],
        currentPage: transactions[1].isNotEmpty ? 2 : 1,
      );
    } catch (e) {
      // _handleError();
    }
  }

  Future<List<Transaction>> _getPointsTransaction(int page) async {
    final res = await _pointsRepository.getPointsTransaction(page);

    if (res.result != 'success') {
      throw Exception();
    }
    return res.transactions;
  }

  Future<void> onReachBottom() async {
    try {
      final nextTransactions =
          await _getPointsTransaction(state.currentPage + 1);
      state = state.appendNext(nextTransactions);
    } catch (e) {
      // _handleError();
    }
  }
}
