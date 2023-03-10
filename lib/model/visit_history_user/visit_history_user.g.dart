// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_history_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitHistoryUserList _$_$_VisitHistoryUserListFromJson(
    Map<String, dynamic> json) {
  return _$_VisitHistoryUserList(
    visitHistoryUsers: (json['visitHistoryUsers'] as List<dynamic>?)
            ?.map((e) => VisitHistoryUser.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_VisitHistoryUserListToJson(
        _$_VisitHistoryUserList instance) =>
    <String, dynamic>{
      'visitHistoryUsers': instance.visitHistoryUsers,
    };

_$_VisitHistoryUser _$_$_VisitHistoryUserFromJson(Map<String, dynamic> json) {
  return _$_VisitHistoryUser(
    gender: json['gender'] as String? ?? '',
    livePlace: json['livePlace'] as String? ?? '',
    nickname: json['nickname'] as String? ?? '',
    uuid: json['uuid'] as String? ?? '',
    age: json['age'] as int? ?? 0,
    created: DateTime.parse(json['created'] as String),
    photoPaths: json['photoPaths'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_VisitHistoryUserToJson(
        _$_VisitHistoryUser instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'livePlace': instance.livePlace,
      'nickname': instance.nickname,
      'uuid': instance.uuid,
      'age': instance.age,
      'created': instance.created.toIso8601String(),
      'photoPaths': instance.photoPaths,
    };
