import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/communication_user/communication_user.dart';

part 'communication_users_response.freezed.dart';
part 'communication_users_response.g.dart';

@freezed
class CommunicationUsersResponse with _$CommunicationUsersResponse {
  const factory CommunicationUsersResponse({
    @Default('') String token,
    @Default('') String result,
    @Default(<CommunicationUser>[]) List<CommunicationUser> userLikedInfos,
  }) = _CommunicationUsersResponse;
  const CommunicationUsersResponse._();

  factory CommunicationUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$CommunicationUsersResponseFromJson(json);
}
