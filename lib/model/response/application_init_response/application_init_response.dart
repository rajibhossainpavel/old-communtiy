import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/app_info/app_info.dart';

part 'application_init_response.freezed.dart';
part 'application_init_response.g.dart';

@freezed
class ApplicationInitResponse with _$ApplicationInitResponse {
  const factory ApplicationInitResponse({
    @Default('') String result,
    @Default('') String uuid,
    AppInfo? info,
    @Default('') String token,
  }) = _ApplicationInitResponse;

  factory ApplicationInitResponse.fromJson(Map<String, dynamic> json) =>
      _$ApplicationInitResponseFromJson(json);
}
