import 'package:freezed_annotation/freezed_annotation.dart';

part 'header.freezed.dart';
part 'header.g.dart';

@freezed
class Header with _$Header {
  const factory Header({
    @Default('') String users,
    @Default('') String groups,
    @Default('') String friends,
    @Default('') String diaries,
    @Default('') String experts,
  }) = _Header;
  const Header._();

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
}
