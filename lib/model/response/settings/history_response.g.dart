// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsHistoryResponse _$_$_SettingsHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_SettingsHistoryResponse(
    result: json['result'] as String? ?? '',
    token: json['token'] as String? ?? '',
    users: (json['users'] as List<dynamic>?)
            ?.map((e) => User.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_SettingsHistoryResponseToJson(
        _$_SettingsHistoryResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'users': instance.users,
    };
