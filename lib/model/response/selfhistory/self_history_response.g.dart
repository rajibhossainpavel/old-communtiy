// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'self_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelfHistoryResponse _$_$_SelfHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_SelfHistoryResponse(
    result: json['result'] as String? ?? '',
    uid: json['uid'] as String? ?? '',
    token: json['token'] as String? ?? '',
    selfHistory: (json['selfHistory'] as List<dynamic>?)
            ?.map((e) => SelfHistory.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    isPreview: json['isPreview'] as bool? ?? false,
    isPublish: json['isPublish'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_SelfHistoryResponseToJson(
        _$_SelfHistoryResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'uid': instance.uid,
      'token': instance.token,
      'selfHistory': instance.selfHistory,
      'isPreview': instance.isPreview,
      'isPublish': instance.isPublish,
    };
