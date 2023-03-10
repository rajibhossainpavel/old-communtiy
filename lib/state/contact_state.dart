import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_state.freezed.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState({
    @Default('') String body,
  }) = _ContactState;

  const ContactState._();
}
