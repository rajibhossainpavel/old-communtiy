import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/transaction/transaction.dart';

part 'point_history_state.freezed.dart';

@freezed
class PointHistoryState with _$PointHistoryState {
  const factory PointHistoryState({
    @Default(<Transaction>[]) List<Transaction> transactions,
    @Default(<Transaction>[]) List<Transaction> nextTransactions,
    @Default(0) int currentPage,
  }) = _PointHistoryState;
  const PointHistoryState._();

  bool get hasNext => nextTransactions.isNotEmpty;

  PointHistoryState appendNext(List<Transaction> newNextTransactions) {
    return copyWith(
      transactions: [
        ...transactions,
        ...nextTransactions,
      ],
      nextTransactions: newNextTransactions,
      currentPage:
          newNextTransactions.isNotEmpty ? currentPage + 1 : currentPage,
    );
  }
}
