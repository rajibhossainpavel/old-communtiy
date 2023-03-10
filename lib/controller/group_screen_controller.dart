import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/model/group/group.dart';
import 'package:oshiruco_app/model/group_detail/group_detail.dart';
import 'package:oshiruco_app/repository/groups_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/group_screen_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_group_confirm_point.dart';

class GroupScreenController extends StateNotifier<GroupScreenState> {
  GroupScreenController({
    required GroupsRepositoryInterface groupRepository,
    required UsersRepositoryInterface usersRepository,
    required String uuid,
  })  : _groupRepository = groupRepository,
        _usersRepository = usersRepository,
        _uuid = uuid,
        super(const GroupScreenState());

  final GroupsRepositoryInterface _groupRepository;
  final UsersRepositoryInterface _usersRepository;

  final String _uuid;

  Future<void> loadInitialData(BuildContext context) async {
    try {
      state = state.copyWith(isLoading: true);
      final response = await _groupRepository.groupFind();
      final joinedGroups = await _groupRepository.groupsFindByUuid(_uuid);
      final groupCategories = response.categories;
      final findGroups = response.findGroups;
      final totalUnreadCount = joinedGroups.fold<int>(
        0,
        (p, c) => c.unread + p,
      );
      state = state.copyWith(
        popularGroups: findGroups[0].groups,
        joinedGroups: joinedGroups,
        newArrivalGroups: findGroups[1].groups,
        categories: groupCategories,
        isLoading: false,
        totalUnreadCount: totalUnreadCount,
      );
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    }
  }

  Future<void> reloadJoinedGroup(BuildContext context) async {
    try {
      if (!mounted) {
        return;
      }

      final joinedGroups = await _groupRepository.groupsFindByUuid(_uuid);

      final totalUnreadCount = joinedGroups.fold<int>(
        0,
        (p, c) => c.unread + p,
      );
      state = state.copyWith(
        joinedGroups: joinedGroups,
        totalUnreadCount: totalUnreadCount,
      );
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    }
  }

  Future<void> onTapCreateGroup(BuildContext context) async {
    final user = await _usersRepository.fetchUserByUuid(_uuid);
    if (user.user.status == UserStatus.osato) {
      final result = await showConfirmCreateGroupDialog(
        context,
        onTapUpdateUserRank: () => routemaster.push('user_status'),
        onTapShowUserRankDetail: () => routemaster.push('membership'),
      );

      if (result == true) {
        routemaster.push('/groups/new');
      }
    } else {
      routemaster.push('/groups/new');
    }
  }

  void onTapCategory() => routemaster.push('/groups/categories/detail');

  void joinedNewGroup(GroupDetail? joinedGroupDetail) {
    if (joinedGroupDetail == null) {
      // TODO(qkuronekop): error handle
      // 処理に失敗しました。
      return;
    }
    final group = Group.fromGroupDetail(joinedGroupDetail);
    state = state.copyWith(
      joinedGroups: [
        ...state.joinedGroups,
        group,
      ],
    );
  }

  void leaveFromGroup(GroupDetail leaveGroupDetail) {
    final group = Group.fromGroupDetail(leaveGroupDetail);
    final updatedJoinedGroups = state.joinedGroups;
    updatedJoinedGroups.remove(group);
    state = state.copyWith(joinedGroups: updatedJoinedGroups);
  }
}
