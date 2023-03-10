import 'package:freezed_annotation/freezed_annotation.dart';

part 'communication_chat_sending_state.freezed.dart';

@freezed
class CommunicationChatSendingState with _$CommunicationChatSendingState {
  const factory CommunicationChatSendingState({
    @Default('') String imagePath,
  }) = _CommunicationChatSendingState;
  const CommunicationChatSendingState._();
}
