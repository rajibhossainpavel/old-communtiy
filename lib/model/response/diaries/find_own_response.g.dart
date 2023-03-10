// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_own_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiariesFindOwnResponse _$_$_DiariesFindOwnResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DiariesFindOwnResponse(
    result: json['result'] as String,
    diaries: (json['diaries'] as List<dynamic>?)
            ?.map((e) => Diary.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_DiariesFindOwnResponseToJson(
        _$_DiariesFindOwnResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'diaries': instance.diaries,
      'token': instance.token,
    };
