// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupDetailResponse _$_$_GroupDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _$_GroupDetailResponse(
    result: json['result'] as String,
    token: json['token'] as String,
    group: json['group'] == null
        ? null
        : GroupDetail.fromJson(json['group'] as Map<String, dynamic>),
    blocked: json['blocked'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_GroupDetailResponseToJson(
        _$_GroupDetailResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'group': instance.group,
      'blocked': instance.blocked,
    };
