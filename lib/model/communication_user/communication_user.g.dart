// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'communication_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommunicationUser _$_$_CommunicationUserFromJson(Map<String, dynamic> json) {
  return _$_CommunicationUser(
    gender: json['gender'] as String? ?? '',
    isMatched: json['isMatched'] as bool? ?? false,
    livePlace: json['livePlace'] as String? ?? '',
    nickname: json['nickname'] as String? ?? '',
    tweet: json['tweet'] as String? ?? '',
    message: json['message'] as String? ?? '',
    uuid: json['uuid'] as String? ?? '',
    age: json['age'] as int? ?? 0,
    liked: json['liked'] as int? ?? 0,
    photoPaths: json['photoPaths'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_CommunicationUserToJson(
        _$_CommunicationUser instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'isMatched': instance.isMatched,
      'livePlace': instance.livePlace,
      'nickname': instance.nickname,
      'tweet': instance.tweet,
      'message': instance.message,
      'uuid': instance.uuid,
      'age': instance.age,
      'liked': instance.liked,
      'photoPaths': instance.photoPaths,
    };
