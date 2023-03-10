import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/user/user.dart';

part 'user_restore_response.freezed.dart';
part 'user_restore_response.g.dart';

@freezed
class UserRestoreResponse with _$UserRestoreResponse {
  const factory UserRestoreResponse({
    @Default('') String result,
    @Default(false) bool isUserTemp,
    @Default('') String limited,
    @Default(false) bool isRestore,
    @Default(null) User? user,
    @Default('') String token,
  }) = _UserRestoreResponse;
  const UserRestoreResponse._();

  factory UserRestoreResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRestoreResponseFromJson(json);
}
