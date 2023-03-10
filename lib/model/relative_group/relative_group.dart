import 'package:freezed_annotation/freezed_annotation.dart';

part 'relative_group.freezed.dart';
part 'relative_group.g.dart';

@freezed
class RelativeGroup with _$RelativeGroup {
  const factory RelativeGroup({
    @Default('') String groupName,
    @Default('') String groupID,
  }) = _RelativeGroup;
  const RelativeGroup._();

  factory RelativeGroup.fromJson(Map<String, dynamic> json) =>
      _$RelativeGroupFromJson(json);
}
