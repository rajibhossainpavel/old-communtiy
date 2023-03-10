import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_user.freezed.dart';
part 'diary_user.g.dart';

@freezed
class DiaryUser with _$DiaryUser {
  const factory DiaryUser({
    @Default('') String uuid,
    @Default('') String userID,
    @Default('') String nickname,
    @Default(0) int age,
    @Default('') String gender,
    @Default('') String tweet,
    @Default('') String livePlace,
    @Default('') String photoPaths,
    @Default(0) int likes,
  }) = _DiaryUser;
  const DiaryUser._();

  factory DiaryUser.fromJson(Map<String, dynamic> json) =>
      _$DiaryUserFromJson(json);
}
