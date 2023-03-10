import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_response.freezed.dart';
part 'notifications_response.g.dart';

@freezed
class NotificationsResponse with _$NotificationsResponse {
  const factory NotificationsResponse({
    @Default('') String result,
    @Default('') String token,
    @Default(false) bool isClose,
  }) = _NotificationsResponse;

  factory NotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationsResponseFromJson(json);
}
