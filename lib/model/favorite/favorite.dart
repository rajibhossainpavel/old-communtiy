import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite.freezed.dart';

part 'favorite.g.dart';

@freezed
class Favorite with _$Favorite {
  const factory Favorite({
    @Default('') String gender,
    @Default('') String logged,
    @Default('') String livePlace,
    @Default('') String nickname,
    @Default('') String targetUserID,
    @Default('') String tweet,
    @Default('') String userIcon,
    @Default('') String uuid,
    @Default('') String updated,
    @Default(0) int age,
    @Default(0) int liked,
  }) = _Favorite;

  const Favorite._();

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);
}
