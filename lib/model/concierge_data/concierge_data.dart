import 'package:freezed_annotation/freezed_annotation.dart';

part 'concierge_data.freezed.dart';
part 'concierge_data.g.dart';

@freezed
class ConciergeData with _$ConciergeData {
  const factory ConciergeData({
    @Default(false) bool readState,
    @Default(false) bool responseState,
    required String expertID,
  }) = _ConciergeData;
  const ConciergeData._();

  factory ConciergeData.fromJson(Map<String, dynamic> json) =>
      _$ConciergeDataFromJson(json);
}
