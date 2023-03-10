import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/model/enum/friend_matching_type.dart';
import 'package:oshiruco_app/model/expert/expert.dart';
import 'package:oshiruco_app/model/group/group.dart';
import 'package:oshiruco_app/model/user/user.dart';

part 'friend_detail_state.freezed.dart';

@freezed
class FriendDetailState with _$FriendDetailState {
  const factory FriendDetailState({
    User? user,
    @Default(FriendMatchingType.initial) FriendMatchingType matchingType,
    @Default(<Group>[]) List<Group> groups,
    @Default(<Expert>[]) List<Expert> experts,
    @Default(<Diary>[]) List<Diary> diaries,
    @Default(0) int latestDiarySmile,
    @Default(false) bool isSmiled,
  }) = _FriendDetailState;
  const FriendDetailState._();
}
