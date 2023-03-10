// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_by_uid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiariesFindByUidResponse _$_$_DiariesFindByUidResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DiariesFindByUidResponse(
    result: json['result'] as String,
    diaries: (json['diaries'] as List<dynamic>?)
            ?.map((e) => Diary.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_DiariesFindByUidResponseToJson(
        _$_DiariesFindByUidResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'diaries': instance.diaries,
      'token': instance.token,
    };
