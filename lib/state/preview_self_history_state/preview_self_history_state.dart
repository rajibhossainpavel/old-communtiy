import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/self_history/self_history.dart';

part 'preview_self_history_state.freezed.dart';

@freezed
class PreviewSelfHistoryState with _$PreviewSelfHistoryState {
  const factory PreviewSelfHistoryState({
    @Default(<SelfHistory>[]) List<SelfHistory> selfHistories,
    @Default('') String userName,
  }) = _PreviewSelfHistoryState;
  const PreviewSelfHistoryState._();
}
