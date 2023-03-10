// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_History _$_$_HistoryFromJson(Map<String, dynamic> json) {
  return _$_History(
    logged: json['logged'] as String? ?? '',
    created: json['created'] as String? ?? '',
    livePlace: json['livePlace'] as String? ?? '',
    nickname: json['nickname'] as String? ?? '',
    targetUserID: json['targetUserID'] as String? ?? '',
    userIcon: json['userIcon'] as String? ?? '',
    uuid: json['uuid'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_HistoryToJson(_$_History instance) =>
    <String, dynamic>{
      'logged': instance.logged,
      'created': instance.created,
      'livePlace': instance.livePlace,
      'nickname': instance.nickname,
      'targetUserID': instance.targetUserID,
      'userIcon': instance.userIcon,
      'uuid': instance.uuid,
    };
