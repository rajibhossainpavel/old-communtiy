// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailResponse _$_$_UserDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UserDetailResponse(
    result: json['result'] as String,
    uid: json['uid'] as String,
    groups: (json['groups'] as List<dynamic>?)
            ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    experts: (json['experts'] as List<dynamic>?)
            ?.map((e) => Expert.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    token: json['token'] as String? ?? '',
    msg: json['msg'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_UserDetailResponseToJson(
        _$_UserDetailResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'uid': instance.uid,
      'groups': instance.groups,
      'user': instance.user,
      'experts': instance.experts,
      'token': instance.token,
      'msg': instance.msg,
    };
