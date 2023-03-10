import 'package:freezed_annotation/freezed_annotation.dart';

part 'block.freezed.dart';

part 'block.g.dart';

@freezed
class Block with _$Block {
  const factory Block({
    @Default('') String gender,
    @Default('') String logged,
    @Default('') String livePlace,
    @Default('') String nickname,
    @Default('') String targetUserID,
    @Default('') String tweet,
    @Default('') String userIcon,
    @Default('') String uuid,
    @Default('') String updated,
    @Default(0) int age,
    @Default(0) int liked,
  }) = _Block;

  const Block._();

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);
}
