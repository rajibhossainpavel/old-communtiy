// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Header _$_$_HeaderFromJson(Map<String, dynamic> json) {
  return _$_Header(
    users: json['users'] as String? ?? '',
    groups: json['groups'] as String? ?? '',
    friends: json['friends'] as String? ?? '',
    diaries: json['diaries'] as String? ?? '',
    experts: json['experts'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_HeaderToJson(_$_Header instance) => <String, dynamic>{
      'users': instance.users,
      'groups': instance.groups,
      'friends': instance.friends,
      'diaries': instance.diaries,
      'experts': instance.experts,
    };
