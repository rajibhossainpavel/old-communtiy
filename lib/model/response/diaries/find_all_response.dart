import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/diary/diary.dart';

part 'find_all_response.freezed.dart';
part 'find_all_response.g.dart';

@freezed
class DiariesFindAllResponse with _$DiariesFindAllResponse {
  const factory DiariesFindAllResponse({
    required String result,
    @Default(<Diary>[]) List<Diary> photoDiaries,
    @Default(<Diary>[]) List<Diary> movieDiaries,
    @Default(<Diary>[]) List<Diary> textDiaries,
    @Default(<Diary>[]) List<Diary> voiceDiaries,
    @Default(<Diary>[]) List<Diary> recentDiaries,
    required String token,
  }) = _DiariesFindAllResponse;
  const DiariesFindAllResponse._();

  factory DiariesFindAllResponse.fromJson(Map<String, dynamic> json) =>
      _$DiariesFindAllResponseFromJson(json);
}
