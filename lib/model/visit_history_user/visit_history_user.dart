import 'package:freezed_annotation/freezed_annotation.dart';

part 'visit_history_user.freezed.dart';
part 'visit_history_user.g.dart';

@freezed
class VisitHistoryUserList with _$VisitHistoryUserList {
  const factory VisitHistoryUserList({
    @Default(<VisitHistoryUser>[]) List<VisitHistoryUser> visitHistoryUsers,
  }) = _VisitHistoryUserList;
  const VisitHistoryUserList._();

  factory VisitHistoryUserList.fromJson(Map<String, dynamic> json) =>
      _$VisitHistoryUserListFromJson(json);
}

@freezed
class VisitHistoryUser with _$VisitHistoryUser {
  const factory VisitHistoryUser({
    @Default('') String gender,
    @Default('') String livePlace,
    @Default('') String nickname,
    @Default('') String uuid,
    @Default(0) int age,
    required DateTime created,
    @Default('') String photoPaths,
  }) = _VisitHistoryUser;
  const VisitHistoryUser._();

  factory VisitHistoryUser.fromJson(Map<String, dynamic> json) =>
      _$VisitHistoryUserFromJson(json);
}
