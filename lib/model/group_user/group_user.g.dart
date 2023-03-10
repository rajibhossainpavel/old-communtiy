// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupUser _$_$_GroupUserFromJson(Map<String, dynamic> json) {
  return _$_GroupUser(
    gender: json['gender'] as String? ?? '',
    isOwner: json['isOwner'] as bool? ?? false,
    livePlace: json['livePlace'] as String? ?? '',
    nickname: json['nickname'] as String? ?? '',
    uuid: json['uuid'] as String? ?? '',
    age: json['age'] as int? ?? 0,
    photoPaths: json['photoPaths'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_GroupUserToJson(_$_GroupUser instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'isOwner': instance.isOwner,
      'livePlace': instance.livePlace,
      'nickname': instance.nickname,
      'uuid': instance.uuid,
      'age': instance.age,
      'photoPaths': instance.photoPaths,
    };
