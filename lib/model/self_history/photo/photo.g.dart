// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$_$_PhotoFromJson(Map<String, dynamic> json) {
  return _$_Photo(
    photoPath: json['photoPath'] as String? ?? '',
    caption: json['caption'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'photoPath': instance.photoPath,
      'caption': instance.caption,
    };
