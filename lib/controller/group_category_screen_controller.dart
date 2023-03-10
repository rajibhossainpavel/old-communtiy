import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/model/group_category/group_category.dart';
import 'package:oshiruco_app/repository/groups_repository.dart';
import 'package:oshiruco_app/state/group_category_screen_state/group_category_screen_state.dart';

class GroupCategoryScreenController
    extends StateNotifier<GroupCategoryScreenState> {
  GroupCategoryScreenController(
      {required GroupsRepositoryInterface groupsRepository})
      : _groupsRepository = groupsRepository,
        super(
          const GroupCategoryScreenState(),
        );

  final GroupsRepositoryInterface _groupsRepository;

  Future<void> loadInitialData() async {
    final category = state.groupCategory;
    if (category == null) {
      return;
    }
    final groups = await _groupsRepository.groupsFindByCategory(category.id);
    state = state.copyWith(groups: groups);
  }

  void setGroupCategory(GroupCategory groupCategory) =>
      state = state.copyWith(groupCategory: groupCategory);
}
