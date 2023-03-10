import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/user/user.dart';

part 'visit_history_response.freezed.dart';
part 'visit_history_response.g.dart';

@freezed
abstract class VisitHistoryResponse with _$VisitHistoryResponse {
  const factory VisitHistoryResponse({
    @Default('') String result,
    @Default('') String token,
    @Default(<User>[]) List<User> users,
  }) = _VisitHistoryResponse;
  const VisitHistoryResponse._();

  factory VisitHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$VisitHistoryResponseFromJson(json);
}
