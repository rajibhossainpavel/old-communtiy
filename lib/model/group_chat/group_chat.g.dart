// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupChat _$_$_GroupChatFromJson(Map<String, dynamic> json) {
  return _$_GroupChat(
    photoPath: json['photoPath'] as String? ?? '',
    message: json['message'] as String? ?? '',
    groupID: json['groupID'] as Map<String, dynamic>,
    postedAt: dateFromTimestampValue(json['postedAt']),
    uid: json['uid'] as String? ?? '',
    uuid: json['uuid'] as String? ?? '',
    isOwnChat: json['isOwnChat'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_GroupChatToJson(_$_GroupChat instance) =>
    <String, dynamic>{
      'photoPath': instance.photoPath,
      'message': instance.message,
      'groupID': instance.groupID,
      'postedAt': timestampFromDateValue(instance.postedAt),
      'uid': instance.uid,
      'uuid': instance.uuid,
      'isOwnChat': instance.isOwnChat,
    };
