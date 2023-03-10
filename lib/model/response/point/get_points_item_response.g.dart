// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_points_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPointsItemResponse _$_$_GetPointsItemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_GetPointsItemResponse(
    result: json['result'] as String,
    products: (json['products'] as List<dynamic>?)
            ?.map((e) => PointItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_GetPointsItemResponseToJson(
        _$_GetPointsItemResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'products': instance.products,
      'token': instance.token,
    };
