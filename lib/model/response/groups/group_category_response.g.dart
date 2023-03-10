// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupsCategoryResponse _$_$_GroupsCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_GroupsCategoryResponse(
    result: json['result'] as String,
    categories: (json['categories'] as List<dynamic>?)
            ?.map((e) => GroupCategory.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_GroupsCategoryResponseToJson(
        _$_GroupsCategoryResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'categories': instance.categories,
      'token': instance.token,
    };
