import 'package:freezed_annotation/freezed_annotation.dart';

part 'communication_user.freezed.dart';
part 'communication_user.g.dart';

@freezed
class CommunicationUser with _$CommunicationUser {
  const factory CommunicationUser({
    @Default('') String gender,
    @Default(false) bool isMatched,
    @Default('') String livePlace,
    @Default('') String nickname,
    @Default('') String tweet,
    @Default('') String message,
    @Default('') String uuid,
    @Default(0) int age,
    @Default(0) int liked,
    @Default('') String photoPaths,
  }) = _CommunicationUser;
  const CommunicationUser._();

  factory CommunicationUser.fromJson(Map<String, dynamic> json) =>
      _$CommunicationUserFromJson(json);
}
