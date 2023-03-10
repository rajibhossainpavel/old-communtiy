import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/group/group.dart';

part 'groups_find_response.freezed.dart';
part 'groups_find_response.g.dart';

@freezed
class GroupsFindResponse with _$GroupsFindResponse {
  const factory GroupsFindResponse({
    required String result,
    @Default(<Group>[]) List<Group> groups,
    required String token,
  }) = _GroupsFindResponse;
  const GroupsFindResponse._();

  factory GroupsFindResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupsFindResponseFromJson(json);
}
