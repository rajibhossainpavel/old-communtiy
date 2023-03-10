// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_recommend_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRecommendResponse _$_$_UserRecommendResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UserRecommendResponse(
    result: json['result'] as String,
    token: json['token'] as String,
    users: (json['users'] as List<dynamic>)
        .map((e) => User.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_UserRecommendResponseToJson(
        _$_UserRecommendResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'users': instance.users,
    };
