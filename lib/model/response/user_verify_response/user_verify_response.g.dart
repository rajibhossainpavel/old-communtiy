// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verify_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserVerifyResponse _$_$_UserVerifyResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UserVerifyResponse(
    result: json['result'] as String? ?? '',
    supporter: json['supporter'] == null
        ? null
        : Supporter.fromJson(json['supporter'] as Map<String, dynamic>),
    token: json['token'] as String? ?? '',
    points: json['points'] as int? ?? 0,
    verify: json['verify'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_UserVerifyResponseToJson(
        _$_UserVerifyResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'supporter': instance.supporter,
      'token': instance.token,
      'points': instance.points,
      'verify': instance.verify,
    };
