// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInformation _$_$_UserInformationFromJson(Map<String, dynamic> json) {
  return _$_UserInformation(
    gender: json['gender'] as String? ?? '',
    livePlace: json['livePlace'] as String? ?? '',
    nickname: json['nickname'] as String? ?? '',
    tweet: json['tweet'] as String? ?? '',
    isHistory: json['isHistory'] as bool? ?? false,
    uuid: json['uuid'] as String? ?? '',
    activeness: json['activeness'] as int? ?? 0,
    age: json['age'] as int? ?? 0,
    liked: json['liked'] as int? ?? 0,
    photoPaths: json['photoPaths'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_UserInformationToJson(_$_UserInformation instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'livePlace': instance.livePlace,
      'nickname': instance.nickname,
      'tweet': instance.tweet,
      'isHistory': instance.isHistory,
      'uuid': instance.uuid,
      'activeness': instance.activeness,
      'age': instance.age,
      'liked': instance.liked,
      'photoPaths': instance.photoPaths,
    };
