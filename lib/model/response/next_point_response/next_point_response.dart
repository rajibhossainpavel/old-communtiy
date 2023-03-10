import 'package:freezed_annotation/freezed_annotation.dart';

part 'next_point_response.freezed.dart';
part 'next_point_response.g.dart';

@freezed
class NextPointResponse with _$NextPointResponse {
  const factory NextPointResponse({
    required String result,
    @Default(0) int selectableJobCount,
    @Default(0) int subscriptionCount,
    required int nextPoint,
    required String nextPointTime,
    required String token,
  }) = _NextPointResponse;
  const NextPointResponse._();

  factory NextPointResponse.fromJson(Map<String, dynamic> json) =>
      _$NextPointResponseFromJson(json);
}
