import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/model/remote_config/banner/banner.dart';

part 'diary_state.freezed.dart';

@freezed
class DiaryState with _$DiaryState {
  const factory DiaryState({
    @Default("") String uuid,
    @Default(<Diary>[]) List<Diary> recentDiaries,
    @Default(<Diary>[]) List<Diary> matchedDiaries,
    @Default(false) bool isLoadingRecent,
    @Default(false) bool isLoadingMatched,
    @Default(false) bool isLoadingSmile,
    @Default(true) bool hasNextRecent,
    @Default(true) bool hasNextMatched,
    @Default(null) Banner? banner,
  }) = _DiaryState;
  const DiaryState._();
}
