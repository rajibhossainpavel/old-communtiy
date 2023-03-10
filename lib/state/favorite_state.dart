import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/favorite/favorite.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(null) List<Favorite>? favorites,
    @Default(true) bool hasNext,
  }) = _FavoriteState;

  const FavoriteState._();
}
