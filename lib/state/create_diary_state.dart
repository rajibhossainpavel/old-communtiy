import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/user/user.dart';

part 'create_diary_state.freezed.dart';

@freezed
class CreateDiaryState with _$CreateDiaryState {
  const factory CreateDiaryState({
    User? user,
    @Default('') String tweet,
    @Default('') String imagePath,
    @Default('') String moviePath,
    @Default(false) bool onlyMatched,
    @Default(false) bool isLoading,
  }) = _CreateDiaryState;

  const CreateDiaryState._();

  bool get isEnableSubmit => tweet.trim().isNotEmpty && !isLoading;
}
