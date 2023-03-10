import 'package:freezed_annotation/freezed_annotation.dart';

part 'visit_history_setting_state.freezed.dart';

@freezed
class VisitHistorySettingState with _$VisitHistorySettingState {
  const factory VisitHistorySettingState({
    @Default(false) bool visitHistoryEnable,
  }) = _VisitHistorySettingState;

  const VisitHistorySettingState._();
}
