import 'package:freezed_annotation/freezed_annotation.dart';

part 'smile_response.freezed.dart';
part 'smile_response.g.dart';

@freezed
class DiariesSmileResponse with _$DiariesSmileResponse {
  const factory DiariesSmileResponse({
    required String result,
    @Default(0) int smile,
    required String token,
  }) = _DiariesSmileResponse;
  const DiariesSmileResponse._();

  factory DiariesSmileResponse.fromJson(Map<String, dynamic> json) =>
      _$DiariesSmileResponseFromJson(json);
}
