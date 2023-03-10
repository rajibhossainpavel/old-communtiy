import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/diary/diary.dart';

part 'find_by_type_response.freezed.dart';
part 'find_by_type_response.g.dart';

@freezed
class DiariesFindByTypeResponse with _$DiariesFindByTypeResponse {
  const factory DiariesFindByTypeResponse({
    required String result,
    @Default("") String message,
    @Default(<Diary>[]) List<Diary> diaries,
    required String token,
  }) = _DiariesFindByTypeResponse;
  const DiariesFindByTypeResponse._();

  factory DiariesFindByTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$DiariesFindByTypeResponseFromJson(json);
}
