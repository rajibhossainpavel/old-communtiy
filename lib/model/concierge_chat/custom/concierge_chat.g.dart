// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concierge_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConciergeChat _$$_ConciergeChatFromJson(Map<String, dynamic> json) =>
    _$_ConciergeChat(
      id: json['id'] as String? ?? '',
      message: json['message'] as String? ?? '',
      photoPath: json['photoPath'] as String? ?? '',
      postedAt: dateFromTimestampValue(json['postedAt']),
      readState: json['readState'] as bool? ?? false,
      roomID: json['roomID'] as Map<String, dynamic>,
      userStatus: json['userStatus'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ConciergeChatToJson(_$_ConciergeChat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'photoPath': instance.photoPath,
      'postedAt': timestampFromDateValue(instance.postedAt),
      'readState': instance.readState,
      'roomID': instance.roomID,
      'userStatus': instance.userStatus,
    };
