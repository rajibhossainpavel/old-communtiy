import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/state/comment_message.dart';

part 'diary_comment_state.freezed.dart';

@freezed
class DiaryCommentState with _$DiaryCommentState {
  const factory DiaryCommentState({
    @Default(null) List<CommentMessage>? commentMessages,
    @Default('') String text,
    @Default(false) bool isOwn,
  }) = _DiaryCommentState;
  const DiaryCommentState._();
}
