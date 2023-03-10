// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationsResponse _$_$_NotificationsResponseFromJson(
    Map<String, dynamic> json) {
  return _$_NotificationsResponse(
    result: json['result'] as String? ?? '',
    token: json['token'] as String? ?? '',
    isClose: json['isClose'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_NotificationsResponseToJson(
        _$_NotificationsResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'isClose': instance.isClose,
    };
