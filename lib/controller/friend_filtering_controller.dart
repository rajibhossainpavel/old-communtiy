import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/model/enum/filter_type.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/model/search_filter_property/search_filter_property.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/friend_filtering_state/friend_filtering_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_filtering_point.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_shortage_point.dart';

class FriendFilteringController extends StateNotifier<FriendFilteringState> {
  FriendFilteringController({
    required UsersRepositoryInterface usersRepository,
    required String uuid,
  })  : _usersRepository = usersRepository,
        _uuid = uuid,
        super(const FriendFilteringState());

  final UsersRepositoryInterface _usersRepository;
  final String _uuid;

  void updateValue(
    FilterType type,
    String value,
  ) {
    final currentPropertyJson = state.property.toJson();
    final newPropertyJson = <String, dynamic>{
      ...currentPropertyJson,
      type.getName(): value,
    };
    state = state.copyWith(
      property: SearchFilterProperty.fromJson(newPropertyJson),
    );
  }

  SearchFilterProperty selectedFilterProperty() {
    final userStatus = state.userStatus;
    final isOshiruco =
        userStatus == UserStatus.oshiruco || userStatus == UserStatus.premium;

    // おさとうの場合はチェックが必要
    final gender = isOshiruco ||
            userStatus == UserStatus.omochi ||
            state.checkMap[FilterType.gender] == true
        ? state.property.gender
        : '';

    // おさとう または おもちの場合はチェックが必要
    final age = isOshiruco || state.checkMap[FilterType.age] == true
        ? state.property.age
        : '';

    // おさとうは使用不可
    final hasPhoto = isOshiruco || userStatus == UserStatus.omochi
        ? state.property.hasPhoto
        : '';

    // おさとう または おもちの場合はチェックが必要
    final livePlace = isOshiruco || state.checkMap[FilterType.livePlace] == true
        ? state.property.livePlace
        : '';

    // おさとう または おもちの場合は使用不可
    final birthPlace = isOshiruco ? state.property.birthPlace : '';

    return state.property.copyWith(
      gender: gender,
      age: age,
      hasPhoto: hasPhoto,
      livePlace: livePlace,
      birthPlace: birthPlace,
    );
  }

  Future<bool> checkPoint(BuildContext context) async {
    if (state.selectedPaidProperties.isNotEmpty) {
      final usePoint = await showUseFilteringPointDialog(
        context,
        state.selectedPaidProperties,
      );
      if (usePoint != true) {
        return false;
      }
    }

    final enoughPoints =
        await _usersRepository.checkPoint(state.selectedPaidProperties.length);
    if (!enoughPoints) {
      await showShortagePointDialog(
        context,
        onTapUpdateUserRank: () => routemaster.push('user_status'),
        onTapBuyPoint: () => routemaster.push('point'),
      );
      return false;
    }
    return true;
  }

  Future<void> usePoint() async {
    await _usersRepository.usePoint(state.selectedPaidProperties.length);
  }

  Future<void> loadInitial() async {
    final user = (await _usersRepository.fetchUserByUuid(_uuid)).user;

    state = state.copyWith(userStatus: user.status);
  }

  void changedSelect(FilterType type, bool selected) {
    state = state.copyWith(checkMap: {...state.checkMap, type: selected});
  }

  void onPressedReset() => state = state.copyWith(
        checkMap: {},
        property: const SearchFilterProperty(),
      );

  void onPressedSearch() {}
}
