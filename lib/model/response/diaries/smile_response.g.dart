// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiariesSmileResponse _$_$_DiariesSmileResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DiariesSmileResponse(
    result: json['result'] as String,
    smile: json['smile'] as int? ?? 0,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_DiariesSmileResponseToJson(
        _$_DiariesSmileResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'smile': instance.smile,
      'token': instance.token,
    };
