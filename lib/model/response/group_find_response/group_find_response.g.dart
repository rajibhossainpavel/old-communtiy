// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_find_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupFindResponse _$_$_GroupFindResponseFromJson(Map<String, dynamic> json) {
  return _$_GroupFindResponse(
    findGroups: (json['findGroups'] as List<dynamic>?)
            ?.map((e) => FindGroup.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    categories: (json['categories'] as List<dynamic>?)
            ?.map((e) => GroupCategory.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_GroupFindResponseToJson(
        _$_GroupFindResponse instance) =>
    <String, dynamic>{
      'findGroups': instance.findGroups,
      'categories': instance.categories,
    };
