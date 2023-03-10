import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/group/group.dart';

part 'find_group.freezed.dart';
part 'find_group.g.dart';

@freezed
class FindGroup with _$FindGroup {
  const factory FindGroup({
    required String title,
    required List<Group> groups,
  }) = _FindGroup;
  const FindGroup._();

  factory FindGroup.fromJson(Map<String, dynamic> json) =>
      _$FindGroupFromJson(json);
}
