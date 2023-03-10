import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/group/group.dart';
import 'package:oshiruco_app/model/group_category/group_category.dart';

part 'group_category_screen_state.freezed.dart';

@freezed
class GroupCategoryScreenState with _$GroupCategoryScreenState {
  const factory GroupCategoryScreenState({
    GroupCategory? groupCategory,
    @Default(<Group>[]) List<Group> groups,
  }) = _GroupCategoryScreenState;
  const GroupCategoryScreenState._();
}
