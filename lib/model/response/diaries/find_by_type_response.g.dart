// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_by_type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiariesFindByTypeResponse _$_$_DiariesFindByTypeResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DiariesFindByTypeResponse(
    result: json['result'] as String,
    message: json['message'] as String? ?? '',
    diaries: (json['diaries'] as List<dynamic>?)
            ?.map((e) => Diary.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_DiariesFindByTypeResponseToJson(
        _$_DiariesFindByTypeResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'diaries': instance.diaries,
      'token': instance.token,
    };
