import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_category.freezed.dart';
part 'group_category.g.dart';

@freezed
class GroupCategory with _$GroupCategory {
  const factory GroupCategory({
    @Default(0) int groupCount,
    @Default('') String name,
    @Default('') String id,
  }) = _GroupCategory;
  const GroupCategory._();

  factory GroupCategory.fromJson(Map<String, dynamic> json) =>
      _$GroupCategoryFromJson(json);
}
