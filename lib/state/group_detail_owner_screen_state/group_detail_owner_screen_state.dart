import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/group_detail/group_detail.dart';
import 'package:oshiruco_app/model/group_user/group_user.dart';

part 'group_detail_owner_screen_state.freezed.dart';

@freezed
class GroupDetailOwnerScreenState with _$GroupDetailOwnerScreenState {
  const factory GroupDetailOwnerScreenState({
    GroupDetail? group,
    @Default(<GroupUser>[]) List<GroupUser> groupUsers,
  }) = _GroupDetailOwnerScreenState;
  const GroupDetailOwnerScreenState._();
}
