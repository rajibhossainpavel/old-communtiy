import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_create_response.freezed.dart';
part 'group_create_response.g.dart';

@freezed
class GroupCreateResponse with _$GroupCreateResponse {
  const factory GroupCreateResponse({
    required String result,
    required String groupID,
    required String token,
  }) = _GroupCreateResponse;
  const GroupCreateResponse._();

  factory GroupCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupCreateResponseFromJson(json);
}
