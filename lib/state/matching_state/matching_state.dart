import 'package:freezed_annotation/freezed_annotation.dart';

part 'matching_state.freezed.dart';

@freezed
class MatchingState with _$MatchingState {
  const factory MatchingState({
    @Default(<String>[]) List<String> toLikedUUIDs,
    @Default(<String>[]) List<String> matchedUUIDs,
    @Default(<String>[]) List<String> blockUUIDs,
    @Default(<String>[]) List<String> fromLikedUUIDs,
  }) = _MatchingState;
  const MatchingState._();
}
