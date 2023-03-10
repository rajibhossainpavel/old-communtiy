import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/self_history/self_history.dart';

part 'self_history_state.freezed.dart';

@freezed
class SelfHistoryState with _$SelfHistoryState {
  const factory SelfHistoryState({
    @Default(<SelfHistory>[]) List<SelfHistory> selfHistories,
    @Default('') String nickName,
  }) = _SelfHistoryState;
  const SelfHistoryState._();
}
