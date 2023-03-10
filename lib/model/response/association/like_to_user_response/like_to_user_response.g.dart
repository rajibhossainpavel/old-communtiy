// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_to_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssociationLikeToUserResponse _$_$_AssociationLikeToUserResponseFromJson(
    Map<String, dynamic> json) {
  return _$_AssociationLikeToUserResponse(
    result: json['result'] as String? ?? '',
    isMatching: json['isMatching'] as bool? ?? false,
    token: json['token'] as String? ?? '',
    likes: json['likes'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_AssociationLikeToUserResponseToJson(
        _$_AssociationLikeToUserResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'isMatching': instance.isMatching,
      'token': instance.token,
      'likes': instance.likes,
    };
