import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/group_detail/group_detail.dart';

part 'group_detail_response.freezed.dart';
part 'group_detail_response.g.dart';

@freezed
class GroupDetailResponse with _$GroupDetailResponse {
  const factory GroupDetailResponse({
    required String result,
    required String token,
    GroupDetail? group,
    @Default(false) bool blocked,
  }) = _GroupDetailResponse;
  const GroupDetailResponse._();

  factory GroupDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupDetailResponseFromJson(json);
}
