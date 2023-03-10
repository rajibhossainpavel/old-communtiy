// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dating_chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DatingChatRoom _$_$_DatingChatRoomFromJson(Map<String, dynamic> json) {
  return _$_DatingChatRoom(
    id: json['id'] as String? ?? '',
    initialState: json['initialState'] as bool? ?? false,
    members: (json['members'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as int),
        ) ??
        {},
    membersData: (json['membersData'] as List<dynamic>?)
            ?.map((e) => DatingChatMember.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    recentMessage: json['recentMessage'] as String? ?? '',
    recentPosted: dateFromTimestampValue(json['recentPosted']),
  );
}

Map<String, dynamic> _$_$_DatingChatRoomToJson(_$_DatingChatRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialState': instance.initialState,
      'members': instance.members,
      'membersData': instance.membersData,
      'recentMessage': instance.recentMessage,
      'recentPosted': timestampFromDateValue(instance.recentPosted),
    };
