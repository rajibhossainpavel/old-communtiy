import 'package:freezed_annotation/freezed_annotation.dart';

part 'history.freezed.dart';
part 'history.g.dart';

@freezed
class History with _$History {
  const factory History({
    @Default('') String logged,
    @Default('') String created,
    @Default('') String livePlace,
    @Default('') String nickname,
    @Default('') String targetUserID,
    @Default('') String userIcon,
    @Default('') String uuid,
  }) = _History;
  const History._();

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
}
