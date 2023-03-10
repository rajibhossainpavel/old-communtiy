// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_point_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NextPointResponse _$_$_NextPointResponseFromJson(Map<String, dynamic> json) {
  return _$_NextPointResponse(
    result: json['result'] as String,
    selectableJobCount: json['selectableJobCount'] as int? ?? 0,
    subscriptionCount: json['subscriptionCount'] as int? ?? 0,
    nextPoint: json['nextPoint'] as int,
    nextPointTime: json['nextPointTime'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_NextPointResponseToJson(
        _$_NextPointResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'selectableJobCount': instance.selectableJobCount,
      'subscriptionCount': instance.subscriptionCount,
      'nextPoint': instance.nextPoint,
      'nextPointTime': instance.nextPointTime,
      'token': instance.token,
    };
