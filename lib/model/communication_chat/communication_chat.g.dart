// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'communication_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommunicationChat _$_$_CommunicationChatFromJson(Map<String, dynamic> json) {
  return _$_CommunicationChat(
    message: json['message'] as String? ?? '',
    photoPath: json['photoPath'] as String? ?? '',
    roomID: json['roomID'] as Map<String, dynamic>,
    postedAt: dateFromTimestampValue(json['postedAt']),
    uuid: json['uuid'] as String? ?? '',
    uid: json['uid'] as String? ?? '',
    isOwnChat: json['isOwnChat'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_CommunicationChatToJson(
        _$_CommunicationChat instance) =>
    <String, dynamic>{
      'message': instance.message,
      'photoPath': instance.photoPath,
      'roomID': instance.roomID,
      'postedAt': timestampFromDateValue(instance.postedAt),
      'uuid': instance.uuid,
      'uid': instance.uid,
      'isOwnChat': instance.isOwnChat,
    };
