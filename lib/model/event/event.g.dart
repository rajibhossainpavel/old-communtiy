// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$_$_EventFromJson(Map<String, dynamic> json) {
  return _$_Event(
    eventID: json['eventID'] as String? ?? '',
    title: json['title'] as String? ?? '',
    subTitle: json['subTitle'] as String? ?? '',
    point: json['point'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_EventToJson(_$_Event instance) => <String, dynamic>{
      'eventID': instance.eventID,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'point': instance.point,
    };
