import 'package:freezed_annotation/freezed_annotation.dart';

part 'relative_expert.freezed.dart';
part 'relative_expert.g.dart';

@freezed
class RelativeExpert with _$RelativeExpert {
  const factory RelativeExpert({
    @Default('') String expertID,
    @Default('') String expertName,
  }) = _RelativeExpert;
  const RelativeExpert._();

  factory RelativeExpert.fromJson(Map<String, dynamic> json) =>
      _$RelativeExpertFromJson(json);
}
