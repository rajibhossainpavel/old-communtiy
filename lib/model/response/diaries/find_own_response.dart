import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/diary/diary.dart';

part 'find_own_response.freezed.dart';
part 'find_own_response.g.dart';

@freezed
class DiariesFindOwnResponse with _$DiariesFindOwnResponse {
  const factory DiariesFindOwnResponse({
    required String result,
    @Default(<Diary>[]) List<Diary> diaries,
    required String token,
  }) = _DiariesFindOwnResponse;
  const DiariesFindOwnResponse._();

  factory DiariesFindOwnResponse.fromJson(Map<String, dynamic> json) =>
      _$DiariesFindOwnResponseFromJson(json);
}
