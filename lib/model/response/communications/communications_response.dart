import 'package:freezed_annotation/freezed_annotation.dart';

part 'communications_response.freezed.dart';
part 'communications_response.g.dart';

@freezed
abstract class CommunicationsResponse with _$CommunicationsResponse {
  const factory CommunicationsResponse({
    required String result,
    required List<String> toLikedUUIDs,
    required List<String> matchedUUIDs,
    required List<String> blockUUIDs,
    required List<String> fromLikedUUIDs,
  }) = _CommunicationsResponse;
  const CommunicationsResponse._();

  factory CommunicationsResponse.fromJson(Map<String, dynamic> json) =>
      _$CommunicationsResponseFromJson(json);
}
