import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/communication_chat/communication_chat.dart';
import 'package:oshiruco_app/model/dating_chat_room/dating_chat_room.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/state/chat_state_interface/chat_state_interface.dart';

part 'communication_chat_state.freezed.dart';

@freezed
class CommunicationChatState
    with _$CommunicationChatState
    implements ChatStateInterface {
  const factory CommunicationChatState({
    User? otherUser,
    User? ownUser,
    DatingChatRoom? room,
    @Default(0) int currentMaximumTimeStamp,
    @Default(0) int currentMinimumTimestamp,
    @Default(false) bool isLoading,
    @Default(false) bool isLastPage,
    @Default(<CommunicationChat>[]) List<CommunicationChat> chats,
  }) = _CommunicationChatState;
  const CommunicationChatState._();
}
