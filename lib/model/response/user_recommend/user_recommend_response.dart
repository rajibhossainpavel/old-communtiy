import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/user/user.dart';

part 'user_recommend_response.freezed.dart';
part 'user_recommend_response.g.dart';

@freezed
class UserRecommendResponse with _$UserRecommendResponse {
  const factory UserRecommendResponse({
    required String result,
    required String token,
    required List<User> users,
  }) = _UserRecommendResponse;

  factory UserRecommendResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRecommendResponseFromJson(json);
}
