import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/search_filter_property/search_filter_property.dart';
import 'package:oshiruco_app/model/user_information/user_information.dart';

part 'friend_screen_state.freezed.dart';

@freezed
class FriendScreenState with _$FriendScreenState {
  const factory FriendScreenState({
    @Default(<UserInformation>[]) List<UserInformation> users,
    @Default(false) bool isLastPage,
    @Default(1) int currentPage,
    @Default(SearchFilterProperty()) SearchFilterProperty searchFilterProperty,
    @Default(false) bool isLoading,
  }) = _FriendScreenState;
  const FriendScreenState._();
}
