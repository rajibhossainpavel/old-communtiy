// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMember _$_$_ChatMemberFromJson(Map<String, dynamic> json) {
  return _$_ChatMember(
    readState: json['readState'] as bool? ?? false,
    responseState: json['responseState'] as bool? ?? false,
    userName: json['userName'] as String? ?? '',
    uuid: json['uuid'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_ChatMemberToJson(_$_ChatMember instance) =>
    <String, dynamic>{
      'readState': instance.readState,
      'responseState': instance.responseState,
      'userName': instance.userName,
      'uuid': instance.uuid,
    };
