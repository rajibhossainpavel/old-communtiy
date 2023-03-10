import 'package:freezed_annotation/freezed_annotation.dart';

part 'updated_points_response.freezed.dart';
part 'updated_points_response.g.dart';

@freezed
abstract class UpdatedPointsResponse with _$UpdatedPointsResponse {
  const factory UpdatedPointsResponse({
    @Default(0) int remaining,
    @Default(0) int likes,
  }) = _UpdatedPointsResponse;
  const UpdatedPointsResponse._();

  factory UpdatedPointsResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdatedPointsResponseFromJson(json);
}
