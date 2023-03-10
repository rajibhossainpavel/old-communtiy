import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/group_user/group_user.dart';

part 'group_detail.freezed.dart';
part 'group_detail.g.dart';

@freezed
class GroupDetail with _$GroupDetail {
  const factory GroupDetail({
    @Default(false) bool isJoin,
    @Default(false) bool blocked,
    @Default(0) int userCount,
    @Default(false) bool isOwner,
    @Default(0) int unread,
    @Default('') String intro,
    @Default('') String name,
    @Default('') String icon,
    @Default('') String ownerUserID,
    @Default('') String id,
    @Default('') String type,
    @Default('') String categoryName,
    @Default(<GroupUser>[]) List<GroupUser> users,
  }) = _GroupDetail;
  const GroupDetail._();

  factory GroupDetail.fromJson(Map<String, dynamic> json) =>
      _$GroupDetailFromJson(json);
}
