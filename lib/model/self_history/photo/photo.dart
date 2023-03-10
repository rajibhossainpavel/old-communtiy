import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    @Default('') String photoPath,
    @Default('') String caption,
  }) = _Photo;
  const Photo._();

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
