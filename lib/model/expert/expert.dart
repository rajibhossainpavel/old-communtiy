import 'package:freezed_annotation/freezed_annotation.dart';

part 'expert.freezed.dart';
part 'expert.g.dart';

@freezed
class Expert with _$Expert {
  const factory Expert({
    @Default('') String name,
    @Default('') String id,
  }) = _Expert;
  const Expert._();

  factory Expert.fromJson(Map<String, dynamic> json) => _$ExpertFromJson(json);
}
