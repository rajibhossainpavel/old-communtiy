import 'package:freezed_annotation/freezed_annotation.dart';

part 'emotion.freezed.dart';
part 'emotion.g.dart';

@freezed
class Emotion with _$Emotion {
  const factory Emotion({
    @Default('') String id,
    @Default('') String sentence,
    @Default('') String draftStatus,
  }) = _Emotion;
  const Emotion._();

  factory Emotion.fromJson(Map<String, dynamic> json) =>
      _$EmotionFromJson(json);
}
