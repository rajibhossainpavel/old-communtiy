// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupDetail _$_$_GroupDetailFromJson(Map<String, dynamic> json) {
  return _$_GroupDetail(
    isJoin: json['isJoin'] as bool? ?? false,
    blocked: json['blocked'] as bool? ?? false,
    userCount: json['userCount'] as int? ?? 0,
    isOwner: json['isOwner'] as bool? ?? false,
    unread: json['unread'] as int? ?? 0,
    intro: json['intro'] as String? ?? '',
    name: json['name'] as String? ?? '',
    icon: json['icon'] as String? ?? '',
    ownerUserID: json['ownerUserID'] as String? ?? '',
    id: json['id'] as String? ?? '',
    type: json['type'] as String? ?? '',
    categoryName: json['categoryName'] as String? ?? '',
    users: (json['users'] as List<dynamic>?)
            ?.map((e) => GroupUser.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_GroupDetailToJson(_$_GroupDetail instance) =>
    <String, dynamic>{
      'isJoin': instance.isJoin,
      'blocked': instance.blocked,
      'userCount': instance.userCount,
      'isOwner': instance.isOwner,
      'unread': instance.unread,
      'intro': instance.intro,
      'name': instance.name,
      'icon': instance.icon,
      'ownerUserID': instance.ownerUserID,
      'id': instance.id,
      'type': instance.type,
      'categoryName': instance.categoryName,
      'users': instance.users,
    };
