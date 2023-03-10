import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_helper_config.freezed.dart';

@freezed
class HttpHelperConfig with _$HttpHelperConfig {
  const factory HttpHelperConfig({
    required String baseUrl,
    @Default(5) int maxAttempts,
    int? connectTimeout,
    int? receiveTimeout,
    int? sendTimeout,
    @Default(<String, dynamic>{}) Map<String, dynamic> headers,
  }) = _HttpHelperConfig;

  const HttpHelperConfig._();
}
