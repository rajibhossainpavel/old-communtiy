// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Favorite _$_$_FavoriteFromJson(Map<String, dynamic> json) {
  return _$_Favorite(
    gender: json['gender'] as String? ?? '',
    logged: json['logged'] as String? ?? '',
    livePlace: json['livePlace'] as String? ?? '',
    nickname: json['nickname'] as String? ?? '',
    targetUserID: json['targetUserID'] as String? ?? '',
    tweet: json['tweet'] as String? ?? '',
    userIcon: json['userIcon'] as String? ?? '',
    uuid: json['uuid'] as String? ?? '',
    updated: json['updated'] as String? ?? '',
    age: json['age'] as int? ?? 0,
    liked: json['liked'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_FavoriteToJson(_$_Favorite instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'logged': instance.logged,
      'livePlace': instance.livePlace,
      'nickname': instance.nickname,
      'targetUserID': instance.targetUserID,
      'tweet': instance.tweet,
      'userIcon': instance.userIcon,
      'uuid': instance.uuid,
      'updated': instance.updated,
      'age': instance.age,
      'liked': instance.liked,
    };
