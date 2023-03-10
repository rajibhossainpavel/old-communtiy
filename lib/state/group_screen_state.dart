import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/group/group.dart';
import 'package:oshiruco_app/model/group_category/group_category.dart';

part 'group_screen_state.freezed.dart';

@freezed
class GroupScreenState with _$GroupScreenState {
  const factory GroupScreenState({
    @Default(false) bool isLoading,
    @Default(<Group>[]) List<Group> popularGroups,
    @Default(<Group>[]) List<Group> joinedGroups,
    @Default(<Group>[]) List<Group> newArrivalGroups,
    @Default(<GroupCategory>[]) List<GroupCategory> categories,
    @Default(0) int totalUnreadCount,
  }) = _GroupScreenState;
  const GroupScreenState._();
}
