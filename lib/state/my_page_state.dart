import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/user/user.dart';

part 'my_page_state.freezed.dart';

@freezed
class MyPageState with _$MyPageState {
  const factory MyPageState({
    User? user,
    @Default('') String version,
  }) = _MyPageState;

  const MyPageState._();
}
