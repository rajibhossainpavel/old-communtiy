import 'package:freezed_annotation/freezed_annotation.dart';

part 'unread_state.freezed.dart';

@freezed
class UnreadState with _$UnreadState {
  const factory UnreadState({
    @Default(0) int like,
    @Default(0) int message,
    @Default(0) int history,
    @Default(0) int news,
    @Default(0) int network,
    @Default(0) int groupChat,
    @Default(0) int comment,
  }) = _UnreadState;
  const UnreadState._();

  int get commucation => like + message;
  int get total => commucation + network + groupChat + comment;
}
