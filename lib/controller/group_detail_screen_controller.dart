import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/repository/groups_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/group_detail_screen_state/group_detail_screen_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_group_chat_warning.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_group_confirm_point.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_shortage_point.dart';

class GroupDetailScreenController
    extends StateNotifier<GroupDetailScreenState> {
  GroupDetailScreenController({
    required GroupsRepositoryInterface groupRepository,
    required UsersRepositoryInterface usersRepository,
  })  : _groupRepository = groupRepository,
        _usersRepository = usersRepository,
        super(const GroupDetailScreenState());

  final GroupsRepositoryInterface _groupRepository;
  final UsersRepositoryInterface _usersRepository;

  Future<void> loadInitialData(String groupId) async {
    final group = await _groupRepository.groupsDetailFindById(groupId);
    final usersWithoutOwn = group.users;
    state = state.copyWith(
      group: group,
      users: usersWithoutOwn,
      isJoined: group.isJoin,
    );
  }

  Future<void> joinedGroup(
      BuildContext context, String groupId, String uuid) async {
    try {
      state = state.copyWith(isLoading: true);

      await _groupRepository.checkCanJoinGroup();

      // おさとう会員の場合はポイント使用についてのダイアログを表示
      final userStatus =
          (await _usersRepository.fetchUserByUuid(uuid)).user.status;
      if (userStatus == UserStatus.osato) {
        final confirmResult = await showConfirmJoinGroupDialog(
          context,
          onTapUpdateUserRank: () => routemaster.push('user_status'),
          onTapShowUserRankDetail: () => routemaster.push('membership'),
        );

        if (confirmResult != true) {
          return;
        }
      }

      final dialogResult = await showGroupChatWarningDialog(context);
      if (dialogResult == null || !dialogResult) {
        return;
      }

      if (userStatus == UserStatus.osato) {
        await showConfirmSendGroupChatDialog(
          context,
          onTapUpdateUserRank: () => routemaster.push('user_status'),
          onTapShowUserRankDetail: () => routemaster.push('membership'),
        );
      }

      state = state.copyWith(isLoading: true);
      final group = state.group;
      if (group == null) {
        return;
      }
      final result = await _groupRepository.joinGroupByGroupId(groupId);
      state = state.copyWith(
        isJoined: result,
        isLoading: false,
        users: state.users,
        group: group.copyWith(userCount: group.userCount + 1),
      );
      enterGroupChat();
    } on PointShortageException {
      if (mounted) {
        await showShortagePointDialog(
          context,
          onTapUpdateUserRank: () => routemaster.push('user_status'),
          onTapBuyPoint: () => routemaster.push('point'),
        );
      }
    } finally {
      if (mounted) {
        state = state.copyWith(isLoading: false);
      }
    }
  }

  void enterGroupChat() => routemaster.push('chat');

  Future<void> leaveGroup(String groupId) async {
    state = state.copyWith(isLoading: true);
    bool isJoined = true;
    try {
      isJoined = !(await _groupRepository.leaveGroupByGroupId(groupId));
      await _groupRepository.groupChatRead(groupId);
    } finally {
      state = state.copyWith(isJoined: isJoined, isLoading: false);
    }
  }
}
