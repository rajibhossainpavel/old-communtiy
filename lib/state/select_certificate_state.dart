import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/enum/certificate.dart';

part 'select_certificate_state.freezed.dart';

@freezed
class SelectCertificateState with _$SelectCertificateState {
  const factory SelectCertificateState({
    @Default(null) Certificate? certificate,
  }) = _SelectCertificateState;

  const SelectCertificateState._();

  bool get isInputted => certificate != null;
}
