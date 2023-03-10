import 'package:freezed_annotation/freezed_annotation.dart';

part 'blocking_url.freezed.dart';
part 'blocking_url.g.dart';

@freezed
class BlockingUrl with _$BlockingUrl {
  const factory BlockingUrl({
    @Default(['']) List<String> urls,
  }) = _BlockingUrl;
  const BlockingUrl._();

  factory BlockingUrl.fromJson(Map<String, dynamic> json) =>
      _$BlockingUrlFromJson(json);
}
