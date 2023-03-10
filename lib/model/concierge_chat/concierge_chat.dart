import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/timestamp_annotation.dart';

part 'concierge_chat.freezed.dart';
part 'concierge_chat.g.dart';

@freezed
class ConciergeChat with _$ConciergeChat {
  const factory ConciergeChat({
    @Default('') String id,
    @Default('') String message,
    @Default('') String photoPath,
    @timestamp required DateTime postedAt,
    @Default(false) bool readState,
    required Map<String, dynamic> roomID,
    @Default(false) bool userStatus,
  }) = _ConciergeChat;
  const ConciergeChat._();

  factory ConciergeChat.fromJson(Map<String, dynamic> json) =>
      _$ConciergeChatFromJson(json);

  factory ConciergeChat.fromSnapshot(QueryDocumentSnapshot<Object?> snapshot) {
    var data = snapshot.data()! as Map<String, dynamic>;
    var id = {'id': snapshot.id};
    data.addEntries(id.entries);
    return ConciergeChat.fromJson(data);
  }
}
