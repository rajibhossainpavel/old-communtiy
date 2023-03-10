import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_state.freezed.dart';

@freezed
class PointState with _$PointState {
  const factory PointState({
    @Default(0) int points,
    @Default(0) int likes,
    @Default('') String name,
    @Default(false) bool isLoading,
  }) = _PointState;

  const PointState._();
}
