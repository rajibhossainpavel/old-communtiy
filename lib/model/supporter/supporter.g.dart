// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supporter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Supporter _$_$_SupporterFromJson(Map<String, dynamic> json) {
  return _$_Supporter(
    codeURL: json['codeURL'] as String,
    code: json['code'] as String,
    name: json['name'] as String,
    id: json['id'] as int,
    type: json['type'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$_$_SupporterToJson(_$_Supporter instance) =>
    <String, dynamic>{
      'codeURL': instance.codeURL,
      'code': instance.code,
      'name': instance.name,
      'id': instance.id,
      'type': instance.type,
      'status': instance.status,
    };
