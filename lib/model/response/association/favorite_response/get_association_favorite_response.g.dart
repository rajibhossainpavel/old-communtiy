// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_association_favorite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAssociationFavoriteResponse _$_$_GetAssociationFavoriteResponseFromJson(
    Map<String, dynamic> json) {
  return _$_GetAssociationFavoriteResponse(
    result: json['result'] as String? ?? '',
    token: json['token'] as String? ?? '',
    favorites: (json['favorites'] as List<dynamic>?)
            ?.map((e) => Favorite.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_GetAssociationFavoriteResponseToJson(
        _$_GetAssociationFavoriteResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'favorites': instance.favorites,
    };
