import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    @Default('') String eventID,
    @Default('') String title,
    @Default('') String subTitle,
    @Default(0) int point,
  }) = _Event;

  const Event._();

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
