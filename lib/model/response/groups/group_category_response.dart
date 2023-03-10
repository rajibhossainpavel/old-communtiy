import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/group_category/group_category.dart';

part 'group_category_response.freezed.dart';
part 'group_category_response.g.dart';

@freezed
class GroupsCategoryResponse with _$GroupsCategoryResponse {
  const factory GroupsCategoryResponse({
    required String result,
    @Default(<GroupCategory>[]) List<GroupCategory> categories,
    required String token,
  }) = _GroupsCategoryResponse;
  const GroupsCategoryResponse._();

  factory GroupsCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupsCategoryResponseFromJson(json);
}
