import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/model/group_detail/group_detail.dart';
import 'package:oshiruco_app/model/group_user/group_user.dart';

part 'group_detail_screen_state.freezed.dart';

@freezed
class GroupDetailScreenState with _$GroupDetailScreenState {
  const factory GroupDetailScreenState({
    GroupDetail? group,
    @Default(UserStatus.osato) UserStatus userStatus,
    @Default(false) bool isJoined,
    @Default(false) bool isLoading,
    @Default(<GroupUser>[]) List<GroupUser> users,
  }) = _GroupDetailScreenState;
  const GroupDetailScreenState._();
}
