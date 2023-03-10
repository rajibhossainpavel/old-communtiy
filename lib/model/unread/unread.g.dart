// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Unread _$_$_UnreadFromJson(Map<String, dynamic> json) {
  return _$_Unread(
    result: json['result'] as String? ?? '',
    token: json['token'] as String? ?? '',
    like: json['like'] as int? ?? 0,
    message: json['message'] as int? ?? 0,
    history: json['history'] as int? ?? 0,
    news: json['news'] as int? ?? 0,
    network: json['network'] as int? ?? 0,
    groupChat: json['groupChat'] as int? ?? 0,
    comment: json['comment'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_UnreadToJson(_$_Unread instance) => <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'like': instance.like,
      'message': instance.message,
      'history': instance.history,
      'news': instance.news,
      'network': instance.network,
      'groupChat': instance.groupChat,
      'comment': instance.comment,
    };
