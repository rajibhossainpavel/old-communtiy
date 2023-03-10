// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_find_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupsFindResponse _$_$_GroupsFindResponseFromJson(
    Map<String, dynamic> json) {
  return _$_GroupsFindResponse(
    result: json['result'] as String,
    groups: (json['groups'] as List<dynamic>?)
            ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_GroupsFindResponseToJson(
        _$_GroupsFindResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'groups': instance.groups,
      'token': instance.token,
    };
