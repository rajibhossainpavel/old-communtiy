import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/diary/diary.dart';

part 'find_by_uid_response.freezed.dart';
part 'find_by_uid_response.g.dart';

@freezed
class DiariesFindByUidResponse with _$DiariesFindByUidResponse {
  const factory DiariesFindByUidResponse({
    required String result,
    @Default(<Diary>[]) List<Diary> diaries,
    required String token,
  }) = _DiariesFindByUidResponse;
  const DiariesFindByUidResponse._();

  factory DiariesFindByUidResponse.fromJson(Map<String, dynamic> json) =>
      _$DiariesFindByUidResponseFromJson(json);
}
