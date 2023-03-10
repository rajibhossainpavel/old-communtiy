// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PointItem _$_$_PointItemFromJson(Map<String, dynamic> json) {
  return _$_PointItem(
    productID: json['productID'] as String,
    productName: json['productName'] as String,
    productType: json['productType'] as String,
    point: json['point'] as int,
  );
}

Map<String, dynamic> _$_$_PointItemToJson(_$_PointItem instance) =>
    <String, dynamic>{
      'productID': instance.productID,
      'productName': instance.productName,
      'productType': instance.productType,
      'point': instance.point,
    };
