import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_state.freezed.dart';

@freezed
class TermsState with _$TermsState {
  const factory TermsState({
    @Default('') String version,
  }) = _TermsState;

  const TermsState._();
}
