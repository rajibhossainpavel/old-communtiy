import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_response.freezed.dart';
part 'create_response.g.dart';

@freezed
abstract class DiariesCreateResponse with _$DiariesCreateResponse {
  const factory DiariesCreateResponse({
    required String result,
    required String token,
  }) = _DiariesCreateResponse;
  const DiariesCreateResponse._();

  factory DiariesCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$DiariesCreateResponseFromJson(json);
}
