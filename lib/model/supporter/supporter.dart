import 'package:freezed_annotation/freezed_annotation.dart';

part 'supporter.freezed.dart';
part 'supporter.g.dart';

@freezed
class Supporter with _$Supporter {
  const factory Supporter({
    required String codeURL,
    required String code,
    required String name,
    required int id,
    required String type,
    required String status,
  }) = _Supporter;
  const Supporter._();

  factory Supporter.fromJson(Map<String, dynamic> json) =>
      _$SupporterFromJson(json);
}
