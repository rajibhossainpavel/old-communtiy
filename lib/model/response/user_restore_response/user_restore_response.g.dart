// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRestoreResponse _$_$_UserRestoreResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UserRestoreResponse(
    result: json['result'] as String? ?? '',
    isUserTemp: json['isUserTemp'] as bool? ?? false,
    limited: json['limited'] as String? ?? '',
    isRestore: json['isRestore'] as bool? ?? false,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    token: json['token'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_UserRestoreResponseToJson(
        _$_UserRestoreResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'isUserTemp': instance.isUserTemp,
      'limited': instance.limited,
      'isRestore': instance.isRestore,
      'user': instance.user,
      'token': instance.token,
    };
