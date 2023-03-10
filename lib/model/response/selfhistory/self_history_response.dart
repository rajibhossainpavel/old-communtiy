import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/self_history/self_history.dart';

part 'self_history_response.freezed.dart';
part 'self_history_response.g.dart';

@freezed
class SelfHistoryResponse with _$SelfHistoryResponse {
  const factory SelfHistoryResponse({
    @Default('') String result,
    @Default('') String uid,
    @Default('') String token,
    @Default(<SelfHistory>[]) List<SelfHistory> selfHistory,
    @Default(false) bool isPreview,
    @Default(false) bool isPublish,
  }) = _SelfHistoryResponse;

  const SelfHistoryResponse._();

  factory SelfHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SelfHistoryResponseFromJson(json);
}
