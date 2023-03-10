import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/enum/filter_type.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/model/search_filter_property/search_filter_property.dart';

part 'friend_filtering_state.freezed.dart';

@freezed
class FriendFilteringState with _$FriendFilteringState {
  const factory FriendFilteringState({
    @Default(UserStatus.osato) UserStatus userStatus,
    @Default(SearchFilterProperty()) SearchFilterProperty property,

    /// 検索画面でチェックボックスがチェックされているかどうか（ポイントが不要な検索項目の場合は true）
    @Default(<FilterType, bool>{}) Map<FilterType, bool> checkMap,
  }) = _FriendFilteringState;
  const FriendFilteringState._();

  String getSelectedValue(FilterType type) {
    final currentPropertyJson = property.toJson();
    return currentPropertyJson[type.getName()].toString();
  }

  /// ポイントが必要な検索項目のリスト
  List<FilterType> get paidProperties {
    switch (userStatus) {
      case UserStatus.osato:
        return FilterType.values;
      case UserStatus.omochi:
        return [
          FilterType.age,
          FilterType.livePlace,
          FilterType.birthPlace,
        ];
      case UserStatus.oshiruco:
      case UserStatus.premium:
        return [];
    }
  }

  /// 検索対象になっている（チェックされており値も選択されている）ポイントが必要な検索項目のリスト
  List<FilterType> get selectedPaidProperties => paidProperties
      .where(
        (type) => checkMap[type] == true && _isNotEmpty(type, property),
      )
      .toList(growable: false);

  bool _isNotEmpty(FilterType type, SearchFilterProperty property) {
    switch (type) {
      case FilterType.gender:
        return property.gender.isNotEmpty;
      case FilterType.age:
        return property.age.isNotEmpty;
      case FilterType.livePlace:
        return property.livePlace.isNotEmpty;
      case FilterType.hasPhoto:
        return property.hasPhoto.isNotEmpty;
      case FilterType.birthPlace:
        return property.birthPlace.isNotEmpty;
    }
  }
}
