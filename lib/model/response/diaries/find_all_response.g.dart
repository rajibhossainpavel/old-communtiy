// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_all_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiariesFindAllResponse _$_$_DiariesFindAllResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DiariesFindAllResponse(
    result: json['result'] as String,
    photoDiaries: (json['photoDiaries'] as List<dynamic>?)
            ?.map((e) => Diary.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    movieDiaries: (json['movieDiaries'] as List<dynamic>?)
            ?.map((e) => Diary.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    textDiaries: (json['textDiaries'] as List<dynamic>?)
            ?.map((e) => Diary.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    voiceDiaries: (json['voiceDiaries'] as List<dynamic>?)
            ?.map((e) => Diary.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    recentDiaries: (json['recentDiaries'] as List<dynamic>?)
            ?.map((e) => Diary.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_DiariesFindAllResponseToJson(
        _$_DiariesFindAllResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'photoDiaries': instance.photoDiaries,
      'movieDiaries': instance.movieDiaries,
      'textDiaries': instance.textDiaries,
      'voiceDiaries': instance.voiceDiaries,
      'recentDiaries': instance.recentDiaries,
      'token': instance.token,
    };
