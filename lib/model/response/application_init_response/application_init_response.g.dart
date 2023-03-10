// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_init_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationInitResponse _$_$_ApplicationInitResponseFromJson(
    Map<String, dynamic> json) {
  return _$_ApplicationInitResponse(
    result: json['result'] as String? ?? '',
    uuid: json['uuid'] as String? ?? '',
    info: json['info'] == null
        ? null
        : AppInfo.fromJson(json['info'] as Map<String, dynamic>),
    token: json['token'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_ApplicationInitResponseToJson(
        _$_ApplicationInitResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'uuid': instance.uuid,
      'info': instance.info,
      'token': instance.token,
    };
