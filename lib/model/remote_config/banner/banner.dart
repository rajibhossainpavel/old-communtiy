import 'package:enum_to_string/enum_to_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';
part 'banner.g.dart';

@freezed
class Banner with _$Banner {
  const factory Banner({
    @Default('') String img,
    @Default('') String title,
    @Default('') String url,
  }) = _Banner;
  const Banner._();

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);

  static Map<BannerPlace, Banner> fromJsonMap(Map<String, dynamic> jsonMap) {
    final bannersMap = <BannerPlace, Banner>{};

    jsonMap.forEach((k, dynamic v) {
      final place = EnumToString.fromString(BannerPlace.values, k);
      if (place != null) {
        bannersMap[place] = Banner.fromJson(v as Map<String, dynamic>);
      }
    });

    return bannersMap;
  }
}

enum BannerPlace {
  users,
  groups,
  friends,
  diaries,
  networks,
  azuki,
}
