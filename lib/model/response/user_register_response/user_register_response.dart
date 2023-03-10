import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/supporter/supporter.dart';

part 'user_register_response.freezed.dart';
part 'user_register_response.g.dart';

@freezed
class UserRegisterResponse with _$UserRegisterResponse {
  const factory UserRegisterResponse({
    required String result,
    Supporter? supporter,
    required String token,
    required int points,
    required bool hasVerified,
    required bool eliminated,
  }) = _UserRegisterResponse;
  const UserRegisterResponse._();

  factory UserRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterResponseFromJson(json);
}
