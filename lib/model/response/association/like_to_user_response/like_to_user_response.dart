import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_to_user_response.freezed.dart';
part 'like_to_user_response.g.dart';

@freezed
class AssociationLikeToUserResponse with _$AssociationLikeToUserResponse {
  const factory AssociationLikeToUserResponse({
    @Default('') String result,
    @Default(false) bool isMatching,
    @Default('') String token,
    @Default(0) int likes,
  }) = _AssociationLikeToUserResponse;
  const AssociationLikeToUserResponse._();

  factory AssociationLikeToUserResponse.fromJson(Map<String, dynamic> json) =>
      _$AssociationLikeToUserResponseFromJson(json);
}
