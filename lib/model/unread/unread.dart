import 'package:freezed_annotation/freezed_annotation.dart';

part 'unread.freezed.dart';
part 'unread.g.dart';

@freezed
class Unread with _$Unread {
  const factory Unread({
    @Default('') String result,
    @Default('') String token,
    @Default(0) int like,
    @Default(0) int message,
    @Default(0) int history,
    @Default(0) int news,
    @Default(0) int network,
    @Default(0) int groupChat,
    @Default(0) int comment,
  }) = _Unread;
  const Unread._();

  factory Unread.fromJson(Map<String, dynamic> json) => _$UnreadFromJson(json);
}
