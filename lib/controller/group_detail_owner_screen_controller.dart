import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/repository/groups_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/group_detail_owner_screen_state/group_detail_owner_screen_state.dart';

class GroupDetailOwnerScreenController
    extends StateNotifier<GroupDetailOwnerScreenState> {
  GroupDetailOwnerScreenController({
    required GroupsRepositoryInterface groupsRepository,
  })  : _groupsRepository = groupsRepository,
        super(const GroupDetailOwnerScreenState());

  final GroupsRepositoryInterface _groupsRepository;

  Future<void> loadInitialData(String groupId) async {
    final group = await _groupsRepository.groupsDetailFindById(groupId);
    state = state.copyWith(
      group: group,
      groupUsers: group.users,
    );
  }

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${state.group?.name ?? ''}を作成しました。'),
      ),
    );
  }

  void enterGroupChat() => routemaster.push('chat');
}
