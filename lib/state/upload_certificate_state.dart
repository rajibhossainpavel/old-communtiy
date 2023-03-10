import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_certificate_state.freezed.dart';

@freezed
class UploadCertificateState with _$UploadCertificateState {
  const factory UploadCertificateState({
    @Default('') String imagePath,
    @Default(false) bool isLoading,
  }) = _UploadCertificateState;

  const UploadCertificateState._();

  bool get isInputted => imagePath.isNotEmpty;
}
