import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/history/history.dart';

part 'association_history_response.freezed.dart';
part 'association_history_response.g.dart';

@freezed
class AssociationHistoryResponse with _$AssociationHistoryResponse {
  const factory AssociationHistoryResponse({
    @Default('') String result,
    @Default('') String token,
    @Default(<History>[]) List<History> histories,
  }) = _AssociationHistoryResponse;
  const AssociationHistoryResponse._();

  factory AssociationHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AssociationHistoryResponseFromJson(json);
}
