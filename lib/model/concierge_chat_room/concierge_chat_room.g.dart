// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concierge_chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConciergeChatRoom _$_$_ConciergeChatRoomFromJson(Map<String, dynamic> json) {
  return _$_ConciergeChatRoom(
    recentMessage: json['recentMessage'] as String? ?? '',
    recentPosted: dateFromTimestampValue(json['recentPosted']),
    initialState: json['initialState'] as bool? ?? false,
    expertData: json['expertData'] == null
        ? null
        : ConciergeData.fromJson(json['expertData'] as Map<String, dynamic>),
    userData: json['userData'] == null
        ? null
        : ConciergeUserData.fromJson(json['userData'] as Map<String, dynamic>),
    members: (json['members'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as int),
        ) ??
        {},
  );
}

Map<String, dynamic> _$_$_ConciergeChatRoomToJson(
        _$_ConciergeChatRoom instance) =>
    <String, dynamic>{
      'recentMessage': instance.recentMessage,
      'recentPosted': timestampFromDateValue(instance.recentPosted),
      'initialState': instance.initialState,
      'expertData': instance.expertData,
      'userData': instance.userData,
      'members': instance.members,
    };
