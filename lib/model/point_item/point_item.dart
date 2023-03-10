import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_item.freezed.dart';
part 'point_item.g.dart';

@freezed
abstract class PointItem with _$PointItem {
  const factory PointItem({
    required String productID,
    required String productName,
    required String productType,
    required int point,
  }) = _PointItem;
  const PointItem._();

  factory PointItem.fromJson(Map<String, dynamic> json) =>
      _$PointItemFromJson(json);
}
