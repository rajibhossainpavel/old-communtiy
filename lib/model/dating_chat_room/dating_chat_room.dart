import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/dating_chat_member/dating_chat_member.dart';
import 'package:oshiruco_app/model/timestamp_annotation.dart';

part 'dating_chat_room.freezed.dart';
part 'dating_chat_room.g.dart';

@freezed
class DatingChatRoom with _$DatingChatRoom {
  const factory DatingChatRoom({
    @Default('') String id,
    @Default(false) bool initialState,
    @Default(<String, int>{}) Map<String, int> members,
    @Default(<DatingChatMember>[]) List<DatingChatMember> membersData,
    @Default('') String recentMessage,
    @timestamp required DateTime recentPosted,
  }) = _DatingChatRoom;

  factory DatingChatRoom.fromJson(Map<String, dynamic> json) =>
      _$DatingChatRoomFromJson(json);

  factory DatingChatRoom.fromDocumentSnapshot(
      DocumentSnapshot<Object?> snapshot) {
    final _json = <String, dynamic>{
      'id': snapshot.id,
      ...snapshot.data()! as Map<String, dynamic>,
    };
    return DatingChatRoom.fromJson(_json);
  }

  factory DatingChatRoom.fromSnapshot(QueryDocumentSnapshot<Object?> snapshot) {
    final data = snapshot.data()! as Map<String, dynamic>;
    Timestamp recentPosted;
    if (data['recentPosted'] is Timestamp) {
      recentPosted = data['recentPosted'] as Timestamp;
    } else {
      recentPosted =
          Timestamp.fromMillisecondsSinceEpoch(data['recentPosted'] as int);
    }
    data.remove('recentPosted');
    final _json = <String, dynamic>{
      'id': snapshot.id,
      'recentPosted': recentPosted,
      ...data,
    };
    return DatingChatRoom.fromJson(_json);
  }
}
