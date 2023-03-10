import 'package:freezed_annotation/freezed_annotation.dart';

part 'next_point_state.freezed.dart';

@freezed
class NextPointState with _$NextPointState {
  const factory NextPointState({
    @Default('') String nextPointTime,
    @Default(0) int nextPoint,
    @Default(false) bool isLoading,
    @Default(false) bool hasLoadInitialData,
  }) = _NextPointState;
  const NextPointState._();
}
