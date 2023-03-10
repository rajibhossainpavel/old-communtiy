import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import 'package:oshiruco_app/model/enum/user_status.dart';

part 'user_status_state.freezed.dart';

@freezed
class UserStatusState with _$UserStatusState {
  const factory UserStatusState({
    @Default('') String nickName,
    @Default(false) bool isLoading,
    @Default(UserStatus.osato) UserStatus currentUserStatus,
    @Default(<ProductDetails>[]) List<ProductDetails> subscriptionProducts,
  }) = _UserStatusState;

  const UserStatusState._();
}
