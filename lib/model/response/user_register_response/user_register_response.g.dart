// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRegisterResponse _$_$_UserRegisterResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UserRegisterResponse(
    result: json['result'] as String,
    supporter: json['supporter'] == null
        ? null
        : Supporter.fromJson(json['supporter'] as Map<String, dynamic>),
    token: json['token'] as String,
    points: json['points'] as int,
    hasVerified: json['hasVerified'] as bool,
    eliminated: json['eliminated'] as bool,
  );
}

Map<String, dynamic> _$_$_UserRegisterResponseToJson(
        _$_UserRegisterResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'supporter': instance.supporter,
      'token': instance.token,
      'points': instance.points,
      'hasVerified': instance.hasVerified,
      'eliminated': instance.eliminated,
    };
