import 'package:freezed_annotation/freezed_annotation.dart';

part 'concierge_user_data.freezed.dart';
part 'concierge_user_data.g.dart';

@freezed
class ConciergeUserData with _$ConciergeUserData {
  const factory ConciergeUserData({
    @Default(false) bool readState,
    @Default(false) bool responseState,
    required String uuid,
  }) = _ConciergeUserData;
  const ConciergeUserData._();

  factory ConciergeUserData.fromJson(Map<String, dynamic> json) =>
      _$ConciergeUserDataFromJson(json);
}
