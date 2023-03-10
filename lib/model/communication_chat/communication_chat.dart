import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/chat_interface/chat_interface.dart';
import 'package:oshiruco_app/model/timestamp_annotation.dart';

part 'communication_chat.freezed.dart';
part 'communication_chat.g.dart';

@freezed
abstract class CommunicationChat
    with _$CommunicationChat
    implements ChatInterface {
  const factory CommunicationChat({
    @Default('') String message,
    @Default('') String photoPath,
    required Map<String, dynamic> roomID,
    @timestamp required DateTime postedAt,
    @Default('') String uuid,
    @Default('') String uid,
    @Default(false) bool isOwnChat,
  }) = _CommunicationChat;
  const CommunicationChat._();

  factory CommunicationChat.fromJson(Map<String, dynamic> json) =>
      _$CommunicationChatFromJson(json);

  factory CommunicationChat.fromSnapshot(
          QueryDocumentSnapshot<Object?> snapshot) =>
      CommunicationChat.fromJson(snapshot.data()! as Map<String, dynamic>);

  factory CommunicationChat.fromSnapshotAndCheckOwner(
    QueryDocumentSnapshot<Object?> snapshot, {
    required String uuid,
  }) {
    final _json = snapshot.data()! as Map<String, dynamic>;
    _json['isOwnChat'] = (_json['uuid'] ?? '') == uuid;
    return CommunicationChat.fromJson(_json);
  }
}
