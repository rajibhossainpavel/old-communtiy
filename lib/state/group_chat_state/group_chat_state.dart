import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/group_chat/group_chat.dart';
import 'package:oshiruco_app/model/group_detail/group_detail.dart';
import 'package:oshiruco_app/model/group_user/group_user.dart';
import 'package:oshiruco_app/state/chat_state_interface/chat_state_interface.dart';

part 'group_chat_state.freezed.dart';

@freezed
class GroupChatState with _$GroupChatState implements ChatStateInterface {
  const factory GroupChatState({
    @Default(<String, GroupUser>{}) Map<String, GroupUser> uuidUsersMapper,
    GroupDetail? group,
    @Default(<GroupChat>[]) List<GroupChat> chats,
    @Default(0) int currentMinimumTimestamp,
    @Default(0) int currentMaximumTimeStamp,
    @Default(false) bool isLoading,
    @Default(false) bool isLastPage,
    @Default(false) bool isShowUnread,
    GroupChat? lastLatestChat,
  }) = _GroupChatState;
  const GroupChatState._();
}
