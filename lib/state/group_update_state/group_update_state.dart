import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/group_category/group_category.dart';

part 'group_update_state.freezed.dart';

@freezed
class GroupUpdateState with _$GroupUpdateState {
  const factory GroupUpdateState({
    @Default('') String selectedImage,
    GroupCategory? category,
    @Default(false) bool isLoading,
  }) = _GroupUpdateState;
  const GroupUpdateState._();
}
