// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$_$_GroupFromJson(Map<String, dynamic> json) {
  return _$_Group(
    userCount: json['userCount'] as int? ?? 0,
    name: json['name'] as String? ?? '',
    icon: json['icon'] as String? ?? '',
    unread: json['unread'] as int? ?? 0,
    isOwner: json['isOwner'] as bool? ?? false,
    ownerUserID: json['ownerUserID'] as String? ?? '',
    id: json['id'] as String? ?? '',
    type: json['type'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'userCount': instance.userCount,
      'name': instance.name,
      'icon': instance.icon,
      'unread': instance.unread,
      'isOwner': instance.isOwner,
      'ownerUserID': instance.ownerUserID,
      'id': instance.id,
      'type': instance.type,
    };
