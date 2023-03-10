// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'communication_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommunicationUsersResponse _$_$_CommunicationUsersResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CommunicationUsersResponse(
    token: json['token'] as String? ?? '',
    result: json['result'] as String? ?? '',
    userLikedInfos: (json['userLikedInfos'] as List<dynamic>?)
            ?.map((e) => CommunicationUser.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_CommunicationUsersResponseToJson(
        _$_CommunicationUsersResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'result': instance.result,
      'userLikedInfos': instance.userLikedInfos,
    };
