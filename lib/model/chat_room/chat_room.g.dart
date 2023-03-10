// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoom _$_$_ChatRoomFromJson(Map<String, dynamic> json) {
  return _$_ChatRoom(
    initialState: json['initialState'] as bool? ?? false,
    members: json['members'] as Map<String, dynamic>,
    membersData: (json['membersData'] as List<dynamic>?)
            ?.map((e) => ChatMember.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    recentMessage: json['recentMessage'] as String? ?? '',
    recentPosted: dateFromTimestampValue(json['recentPosted']),
  );
}

Map<String, dynamic> _$_$_ChatRoomToJson(_$_ChatRoom instance) =>
    <String, dynamic>{
      'initialState': instance.initialState,
      'members': instance.members,
      'membersData': instance.membersData,
      'recentMessage': instance.recentMessage,
      'recentPosted': timestampFromDateValue(instance.recentPosted),
    };
