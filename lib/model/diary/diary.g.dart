// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Diary _$_$_DiaryFromJson(Map<String, dynamic> json) {
  return _$_Diary(
    comments: json['comments'] as int? ?? 0,
    id: json['id'] as String? ?? '',
    type: json['type'] as String? ?? '',
    text: json['text'] as String? ?? '',
    media: json['media'] as String? ?? '',
    smile: json['smile'] as int? ?? 0,
    isSmiled: json['isSmiled'] as bool? ?? false,
    matched: json['matched'] as bool? ?? false,
    time: json['time'] as String? ?? '',
    unread: json['unread'] as int? ?? 0,
    user: json['user'] == null
        ? null
        : DiaryUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DiaryToJson(_$_Diary instance) => <String, dynamic>{
      'comments': instance.comments,
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'media': instance.media,
      'smile': instance.smile,
      'isSmiled': instance.isSmiled,
      'matched': instance.matched,
      'time': instance.time,
      'unread': instance.unread,
      'user': instance.user,
    };
