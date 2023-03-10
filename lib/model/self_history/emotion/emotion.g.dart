// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Emotion _$_$_EmotionFromJson(Map<String, dynamic> json) {
  return _$_Emotion(
    id: json['id'] as String? ?? '',
    sentence: json['sentence'] as String? ?? '',
    draftStatus: json['draftStatus'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_EmotionToJson(_$_Emotion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sentence': instance.sentence,
      'draftStatus': instance.draftStatus,
    };
