import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/supporter/supporter.dart';

part 'user_verify_response.freezed.dart';
part 'user_verify_response.g.dart';

@freezed
class UserVerifyResponse with _$UserVerifyResponse {
  const factory UserVerifyResponse({
    @Default('') String result,
    Supporter? supporter,
    @Default('') String token,
    @Default(0) int points,
    @Default('') String verify,
  }) = _UserVerifyResponse;
  const UserVerifyResponse._();

  factory UserVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$UserVerifyResponseFromJson(json);
}
