// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FindGroup _$_$_FindGroupFromJson(Map<String, dynamic> json) {
  return _$_FindGroup(
    title: json['title'] as String,
    groups: (json['groups'] as List<dynamic>)
        .map((e) => Group.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_FindGroupToJson(_$_FindGroup instance) =>
    <String, dynamic>{
      'title': instance.title,
      'groups': instance.groups,
    };
