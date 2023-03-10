// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitHistoryResponse _$_$_VisitHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_VisitHistoryResponse(
    result: json['result'] as String? ?? '',
    token: json['token'] as String? ?? '',
    users: (json['users'] as List<dynamic>?)
            ?.map((e) => User.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_VisitHistoryResponseToJson(
        _$_VisitHistoryResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'users': instance.users,
    };
