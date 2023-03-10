import 'package:freezed_annotation/freezed_annotation.dart';

part 'greeting_state.freezed.dart';

@freezed
class GreetingState with _$GreetingState {
  const factory GreetingState({
    @Default(false) bool termOfUse,
    @Default(false) bool privacyPolicy,
    @Default(false) bool isLoading,
    @Default('') String version,
  }) = _GreetingState;

  const GreetingState._();

  bool get isInputted => termOfUse && privacyPolicy;
}
