import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/self_history/emotion/emotion.dart';
import 'package:oshiruco_app/model/self_history/photo/photo.dart';

part 'self_history.freezed.dart';
part 'self_history.g.dart';

@freezed
class SelfHistory with _$SelfHistory {
  const factory SelfHistory({
    @Default(0) int generation,
    @Default('') String photoDraftStatus,
    @Default('') String id,
    required Emotion joy,
    required Emotion enjoy,
    required Emotion sorrow,
    required Emotion anger,
    @Default(<Photo>[]) List<Photo> photos,
  }) = _SelfHistory;
  const SelfHistory._();

  factory SelfHistory.fromJson(Map<String, dynamic> json) =>
      _$SelfHistoryFromJson(json);
}
