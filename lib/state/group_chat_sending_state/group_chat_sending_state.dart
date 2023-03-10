import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_chat_sending_state.freezed.dart';

@freezed
class GroupChatSendingState with _$GroupChatSendingState {
  const factory GroupChatSendingState({
    @Default('') String imagePath,
    DateTime? lastSendTime,
  }) = _GroupChatSendingState;
  const GroupChatSendingState._();
}
