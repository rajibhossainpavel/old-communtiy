import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/concierge_data/concierge_data.dart';
import 'package:oshiruco_app/model/concierge_user_data/concierge_user_data.dart';
import 'package:oshiruco_app/model/timestamp_annotation.dart';

part 'concierge_chat_room.freezed.dart';
part 'concierge_chat_room.g.dart';

@freezed
class ConciergeChatRoom with _$ConciergeChatRoom {
  const factory ConciergeChatRoom({
    @Default('') String recentMessage,
    @timestamp required DateTime recentPosted,
    @Default(false) bool initialState,
    ConciergeData? expertData,
    ConciergeUserData? userData,
    @Default(<String, int>{}) Map<String, int> members,
  }) = _ConciergeChatRoom;
  const ConciergeChatRoom._();

  factory ConciergeChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ConciergeChatRoomFromJson(json);
}
