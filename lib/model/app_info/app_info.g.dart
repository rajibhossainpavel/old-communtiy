// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppInfo _$_$_AppInfoFromJson(Map<String, dynamic> json) {
  return _$_AppInfo(
    registerState: json['registerState'] as String,
    userTempLimit: json['userTempLimit'] as String,
    loginBonus: json['loginBonus'] as int,
    isUserTemp: json['isUserTemp'] as bool,
  );
}

Map<String, dynamic> _$_$_AppInfoToJson(_$_AppInfo instance) =>
    <String, dynamic>{
      'registerState': instance.registerState,
      'userTempLimit': instance.userTempLimit,
      'loginBonus': instance.loginBonus,
      'isUserTemp': instance.isUserTemp,
    };
