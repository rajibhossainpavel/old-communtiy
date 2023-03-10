import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/model/user/user.dart';

part 'user_diaries_state.freezed.dart';

@freezed
class UserDiariesState with _$UserDiariesState {
  const factory UserDiariesState({
    @Default(<Diary>[]) List<Diary> diaries,
    User? user,
    @Default(true) bool hasNext,
  }) = _UserDiariesState;
  const UserDiariesState._();
}
