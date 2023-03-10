import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/group_detail/group_detail.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group with _$Group {
  const factory Group({
    @Default(0) int userCount,
    @Default('') String name,
    @Default('') String icon,
    @Default(0) int unread,
    @Default(false) bool isOwner,
    @Default('') String ownerUserID,
    @Default('') String id,
    @Default('') String type,
  }) = _Group;
  const Group._();

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  factory Group.fromGroupDetail(GroupDetail groupDetail) {
    return Group(
      userCount: groupDetail.userCount,
      name: groupDetail.name,
      icon: groupDetail.icon,
      unread: groupDetail.unread,
      isOwner: groupDetail.isOwner,
      ownerUserID: groupDetail.ownerUserID,
      id: groupDetail.id,
      type: groupDetail.type,
    );
  }
}
