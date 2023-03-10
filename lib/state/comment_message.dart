import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/user/user.dart';

part 'comment_message.freezed.dart';

@freezed
class CommentMessage with _$CommentMessage {
  const factory CommentMessage({
    @Default('') String commentUserUuid,
    @Default('') String diaryID,
    @Default('') String photoPath,
    DateTime? postedAt,
    @Default('') String message,
    User? user,
    @Default(false) bool isOwn,
  }) = _CommentMessage;
  const CommentMessage._();
}
