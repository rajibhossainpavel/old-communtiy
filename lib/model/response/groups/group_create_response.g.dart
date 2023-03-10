// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_create_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupCreateResponse _$_$_GroupCreateResponseFromJson(
    Map<String, dynamic> json) {
  return _$_GroupCreateResponse(
    result: json['result'] as String,
    groupID: json['groupID'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_GroupCreateResponseToJson(
        _$_GroupCreateResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'groupID': instance.groupID,
      'token': instance.token,
    };
