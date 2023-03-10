import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/user/user.dart';

part 'history_response.freezed.dart';
part 'history_response.g.dart';

@freezed
abstract class SettingsHistoryResponse with _$SettingsHistoryResponse {
  const factory SettingsHistoryResponse({
    @Default('') String result,
    @Default('') String token,
    @Default(<User>[]) List<User> users,
  }) = _SettingsHistoryResponse;
  const SettingsHistoryResponse._();

  factory SettingsHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SettingsHistoryResponseFromJson(json);
}
