import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/expert/expert.dart';
import 'package:oshiruco_app/model/group/group.dart';
import 'package:oshiruco_app/model/user/user.dart';

part 'user_detail_response.freezed.dart';
part 'user_detail_response.g.dart';

@freezed
class UserDetailResponse with _$UserDetailResponse {
  const factory UserDetailResponse({
    required String result,
    required String uid,
    @Default(<Group>[]) List<Group> groups,
    required User user,
    @Default(<Expert>[]) List<Expert> experts,
    @Default('') String token,
    @Default('') String msg,
  }) = _UserDetailResponse;
  const UserDetailResponse._();

  factory UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      json['user'] != null
          ? _$UserDetailResponseFromJson(json)
          : UserDetailResponse(
              result: json['result']?.toString() ?? '',
              uid: json['uid']?.toString() ?? '',
              token: json['token']?.toString() ?? '',
              msg: json['msg']?.toString() ?? '',
              user: const User(),
            );
}
