// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dating_chat_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DatingChatMember _$_$_DatingChatMemberFromJson(Map<String, dynamic> json) {
  return _$_DatingChatMember(
    readState: json['readState'] as bool? ?? false,
    responseState: json['responseState'] as bool? ?? false,
    userName: json['userName'] as String,
    uuid: json['uuid'] as String,
  );
}

Map<String, dynamic> _$_$_DatingChatMemberToJson(
        _$_DatingChatMember instance) =>
    <String, dynamic>{
      'readState': instance.readState,
      'responseState': instance.responseState,
      'userName': instance.userName,
      'uuid': instance.uuid,
    };
