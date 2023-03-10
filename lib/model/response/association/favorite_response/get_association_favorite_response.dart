import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/favorite/favorite.dart';

part 'get_association_favorite_response.freezed.dart';
part 'get_association_favorite_response.g.dart';

@freezed
class GetAssociationFavoriteResponse with _$GetAssociationFavoriteResponse {
  const factory GetAssociationFavoriteResponse({
    @Default('') String result,
    @Default('') String token,
    @Default(<Favorite>[]) List<Favorite> favorites,
  }) = _GetAssociationFavoriteResponse;

  const GetAssociationFavoriteResponse._();

  factory GetAssociationFavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAssociationFavoriteResponseFromJson(json);
}
