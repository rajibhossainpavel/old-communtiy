import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/point_item/point_item.dart';

part 'get_points_item_response.freezed.dart';
part 'get_points_item_response.g.dart';

@freezed
class GetPointsItemResponse with _$GetPointsItemResponse {
  const factory GetPointsItemResponse({
    required String result,
    @Default(<PointItem>[]) List<PointItem> products,
    required String token,
  }) = _GetPointsItemResponse;
  const GetPointsItemResponse._();

  factory GetPointsItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPointsItemResponseFromJson(json);
}
