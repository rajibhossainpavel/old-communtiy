import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_information.freezed.dart';
part 'user_information.g.dart';

@freezed
class UserInformation with _$UserInformation {
  const factory UserInformation({
    @Default('') String gender,
    @Default('') String livePlace,
    @Default('') String nickname,
    @Default('') String tweet,
    @Default(false) bool isHistory,
    @Default('') String uuid,
    @Default(0) int activeness,
    @Default(0) int age,
    @Default(0) int liked,
    @Default('') String photoPaths,
  }) = _UserInformation;
  const UserInformation._();

  factory UserInformation.fromJson(Map<String, dynamic> json) =>
      _$UserInformationFromJson(json);
}

extension UserInformationList on List<UserInformation> {
  static List<UserInformation> fromJson(List<dynamic> response) {
    return response
        .map((dynamic e) => UserInformation.fromJson(e as Map<String, dynamic>))
        .toList()
        .cast<UserInformation>();
  }
}
