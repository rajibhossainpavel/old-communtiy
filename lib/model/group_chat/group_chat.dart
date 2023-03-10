import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/chat_interface/chat_interface.dart';
import 'package:oshiruco_app/model/timestamp_annotation.dart';

part 'group_chat.freezed.dart';
part 'group_chat.g.dart';

@freezed
class GroupChat with _$GroupChat implements ChatInterface {
  const factory GroupChat({
    @Default('') String photoPath,
    @Default('') String message,
    required Map<String, dynamic> groupID,
    @timestamp required DateTime postedAt,
    @Default('') String uid,
    @Default('') String uuid,
    @Default(false) bool isOwnChat,
  }) = _GroupChat;
  const GroupChat._();

  factory GroupChat.fromJson(Map<String, dynamic> json) =>
      _$GroupChatFromJson(json);

  factory GroupChat.fromSnapshot(QueryDocumentSnapshot<Object?> snapshot) =>
      GroupChat.fromJson(snapshot.data()! as Map<String, dynamic>);

  factory GroupChat.fromSnapshotAndCheckOwner(
    QueryDocumentSnapshot<Object?> snapshot, {
    required String uuid,
  }) {
    final _json = snapshot.data()! as Map<String, dynamic>;
    _json['isOwnChat'] = (_json['uuid'] ?? '') == uuid;
    return GroupChat.fromJson(_json);
  }
}
