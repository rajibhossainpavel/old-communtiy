import 'package:freezed_annotation/freezed_annotation.dart';

part 'concierge.freezed.dart';
part 'concierge.g.dart';

@freezed
class Concierge with _$Concierge {
  const factory Concierge({
    @Default('') String id,
    @Default('') String jobId,
    @Default('') String name,
    @Default('') String iconPath,
    @Default('') String msgDefault,
    @Default('') String msgAzuki,
    @Default('') String msgRestore,
    @Default('') String msgClose,
  }) = _Concierge;
  const Concierge._();

  factory Concierge.fromJson(Map<String, dynamic> json) =>
      _$ConciergeFromJson(json);
}
