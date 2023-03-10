import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_user.freezed.dart';
part 'group_user.g.dart';

@freezed
class GroupUser with _$GroupUser {
  const factory GroupUser({
    @Default('') String gender,
    @Default(false) bool isOwner,
    @Default('') String livePlace,
    @Default('') String nickname,
    @Default('') String uuid,
    @Default(0) int age,
    @Default('') String photoPaths,
  }) = _GroupUser;
  const GroupUser._();

  factory GroupUser.leaveUser() => const GroupUser(
        isOwner: false,
        nickname: '退会済みのユーザー',
      );

  factory GroupUser.fromJson(Map<String, dynamic> json) =>
      _$GroupUserFromJson(json);
}
