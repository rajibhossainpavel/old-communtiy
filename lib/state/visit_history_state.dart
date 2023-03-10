import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/model/visit_history_user/visit_history_user.dart';

part 'visit_history_state.freezed.dart';

@freezed
class VisitHistoryState with _$VisitHistoryState {
  const factory VisitHistoryState({
    @Default(UserStatus.osato) UserStatus userStatus,
    @Default(<VisitHistoryUser>[]) List<VisitHistoryUser> visitedUsers,
  }) = _VisitHistoryState;

  const VisitHistoryState._();
}
