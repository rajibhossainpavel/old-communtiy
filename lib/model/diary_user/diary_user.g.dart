// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiaryUser _$_$_DiaryUserFromJson(Map<String, dynamic> json) {
  return _$_DiaryUser(
    uuid: json['uuid'] as String? ?? '',
    userID: json['userID'] as String? ?? '',
    nickname: json['nickname'] as String? ?? '',
    age: json['age'] as int? ?? 0,
    gender: json['gender'] as String? ?? '',
    tweet: json['tweet'] as String? ?? '',
    livePlace: json['livePlace'] as String? ?? '',
    photoPaths: json['photoPaths'] as String? ?? '',
    likes: json['likes'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_DiaryUserToJson(_$_DiaryUser instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'userID': instance.userID,
      'nickname': instance.nickname,
      'age': instance.age,
      'gender': instance.gender,
      'tweet': instance.tweet,
      'livePlace': instance.livePlace,
      'photoPaths': instance.photoPaths,
      'likes': instance.likes,
    };
