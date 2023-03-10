import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/chat_member/chat_member.dart';
import 'package:oshiruco_app/model/timestamp_annotation.dart';

part 'chat_room.freezed.dart';
part 'chat_room.g.dart';

@freezed
class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    @Default(false) bool initialState,
    required Map<String, dynamic> members,
    @Default(<ChatMember>[]) List<ChatMember> membersData,
    @Default('') String recentMessage,
    @timestamp required DateTime recentPosted,
  }) = _ChatRoom;
  const ChatRoom._();

  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json);
}
