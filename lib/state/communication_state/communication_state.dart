import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/communication_user/communication_user.dart';
import 'package:oshiruco_app/model/dating_chat_room/dating_chat_room.dart';

part 'communication_state.freezed.dart';

@freezed
class CommunicationState with _$CommunicationState {
  const factory CommunicationState({
    @Default(<CommunicationUser>[]) List<CommunicationUser> matchedUsers,

    /// {otherUuid: DatingChatRoom}のmap
    @Default(<String, DatingChatRoom>{})
        Map<String, DatingChatRoom> uuidChatRoomMapper,
    @Default(<CommunicationUser>[]) List<CommunicationUser> toLikedUsers,
    @Default(0) int currentToLikedPage,
    @Default(false) bool isLastToLiked,
    @Default(<CommunicationUser>[]) List<CommunicationUser> fromLikedUsers,
    @Default(1) int currentFromLikedPage,
    @Default(false) bool isLastFromLiked,
  }) = _CommunicationState;
  const CommunicationState._();
}
