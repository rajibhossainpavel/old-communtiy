import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/group_category/group_category.dart';
import 'package:oshiruco_app/model/response/group_find_response/find_group.dart';

part 'group_find_response.freezed.dart';
part 'group_find_response.g.dart';

@freezed
class GroupFindResponse with _$GroupFindResponse {
  const factory GroupFindResponse({
    @Default(<FindGroup>[]) List<FindGroup> findGroups,
    @Default(<GroupCategory>[]) List<GroupCategory> categories,
  }) = _GroupFindResponse;
  const GroupFindResponse._();

  factory GroupFindResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupFindResponseFromJson(json);
}
