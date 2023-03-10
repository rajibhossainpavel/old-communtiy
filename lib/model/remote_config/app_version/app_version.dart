import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version.freezed.dart';
part 'app_version.g.dart';

@freezed
class AppVersion with _$AppVersion {
  const factory AppVersion({
    @Default('') String info,
    @Default('') String force,
  }) = _AppVersion;

  factory AppVersion.fromJson(Map<String, dynamic> json) =>
      _$AppVersionFromJson(json);
}
