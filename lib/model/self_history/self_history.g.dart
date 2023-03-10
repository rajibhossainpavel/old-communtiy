// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'self_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelfHistory _$_$_SelfHistoryFromJson(Map<String, dynamic> json) {
  return _$_SelfHistory(
    generation: json['generation'] as int? ?? 0,
    photoDraftStatus: json['photoDraftStatus'] as String? ?? '',
    id: json['id'] as String? ?? '',
    joy: Emotion.fromJson(json['joy'] as Map<String, dynamic>),
    enjoy: Emotion.fromJson(json['enjoy'] as Map<String, dynamic>),
    sorrow: Emotion.fromJson(json['sorrow'] as Map<String, dynamic>),
    anger: Emotion.fromJson(json['anger'] as Map<String, dynamic>),
    photos: (json['photos'] as List<dynamic>?)
            ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_SelfHistoryToJson(_$_SelfHistory instance) =>
    <String, dynamic>{
      'generation': instance.generation,
      'photoDraftStatus': instance.photoDraftStatus,
      'id': instance.id,
      'joy': instance.joy,
      'enjoy': instance.enjoy,
      'sorrow': instance.sorrow,
      'anger': instance.anger,
      'photos': instance.photos,
    };
