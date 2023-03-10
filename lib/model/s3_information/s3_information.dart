import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_information.freezed.dart';
part 's3_information.g.dart';

@freezed
class S3Information with _$S3Information {
  const factory S3Information({
    @Default('') String cognitoPoolId,
    @Default('') String region,
  }) = _S3Information;

  factory S3Information.fromJson(Map<String, dynamic> json) =>
      _$S3InformationFromJson(json);

  factory S3Information.fromString(String src) {
    final tmp = json.decode(src) as Map<String, dynamic>;
    return S3Information.fromJson(tmp);
  }
}
