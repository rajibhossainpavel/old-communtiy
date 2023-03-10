import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/user/user.dart';

part 'edit_my_page_state.freezed.dart';

@freezed
class EditMyPageState with _$EditMyPageState {
  const factory EditMyPageState({
    @Default(null) User? user,
  }) = _EditMyPageState;

  const EditMyPageState._();
}
