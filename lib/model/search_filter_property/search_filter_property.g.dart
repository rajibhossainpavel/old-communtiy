// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchFilterProperty _$_$_SearchFilterPropertyFromJson(
    Map<String, dynamic> json) {
  return _$_SearchFilterProperty(
    gender: json['gender'] as String? ?? '',
    age: json['age'] as String? ?? '',
    birthPlace: json['birthPlace'] as String? ?? '',
    livePlace: json['livePlace'] as String? ?? '',
    hasPhoto: json['hasPhoto'] as String? ?? '',
    page: json['page'] as int? ?? 1,
  );
}

Map<String, dynamic> _$_$_SearchFilterPropertyToJson(
        _$_SearchFilterProperty instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'age': instance.age,
      'birthPlace': instance.birthPlace,
      'livePlace': instance.livePlace,
      'hasPhoto': instance.hasPhoto,
      'page': instance.page,
    };
