import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/model/enum/diary_type.dart';
import 'package:oshiruco_app/model/response/diaries/create_response.dart';
import 'package:oshiruco_app/model/response/diaries/find_by_type_response.dart';
import 'package:oshiruco_app/model/response/diaries/find_by_uid_response.dart';

abstract class DiariesRepositoryInterface {
  /// Uuidから日記一覧を取得
  Future<DiariesFindByUidResponse> findByUuid({
    required String uuid,
    String lastId = '',
  });

  /// diaryのtypeによって日記の一覧を取得
  Future<DiariesFindByTypeResponse> findByType({
    required DiaryType type,
    String lastId = '',
  });

  /// 仲間の日記の一覧を取得
  Future<DiariesFindByTypeResponse> findMatched({
    String lastId = '',
  });

  /// 日記のIDとその日記の所持するUserIdにsmileをつける。
  Future<int> smile(String diaryId, {required String diaryUserId});

  /// 日記作成
  Future<DiariesCreateResponse> create({
    required String text,
    required String media,
    required DiaryType type,
    required bool matched,
  });

  /// コメント作成
  Future<DiariesCreateResponse> postDiaryComment({
    required String text,
    required String diaryId,
    required String diaryUserUUID,
  });

  /// コメント既読
  Future<void> markAsReadComments(String diaryId);
}

class DiariesRepository implements DiariesRepositoryInterface {
  const DiariesRepository({required this.client});

  final OshirucoApiClient client;

  @override
  Future<DiariesFindByUidResponse> findByUuid(
      {required String uuid, String lastId = ''}) async {
    return client.diariesFindByUuidRequest(uuid, lastId: lastId);
  }

  @override
  Future<DiariesFindByTypeResponse> findByType(
      {required DiaryType type, String lastId = ''}) {
    return client.diariesFindByTypeRequest(
      type.toApiRequest(),
      lastId: lastId,
    );
  }

  @override
  Future<DiariesFindByTypeResponse> findMatched({String lastId = ''}) {
    return client.diariesFindMatchedRequest(lastId: lastId);
  }

  /// 0が返ってくるときはfailure
  @override
  Future<int> smile(String diaryId, {required String diaryUserId}) async {
    final data =
        await client.diariesSmileRequest(diaryId, diaryUserId: diaryUserId);
    return data.smile;
  }

  @override
  Future<DiariesCreateResponse> create({
    required String text,
    required String media,
    required DiaryType type,
    required bool matched,
  }) async {
    if (matched && !(await client.checkPoints("matchedDiary", 1))) {
      throw const PointShortageException();
    }

    final response = await client.diariesCreate(text, media, type, matched);
    if (response.result != "success") {
      return response;
    }

    if (matched) {
      await client.usePoints("matchedDiary", 1);
    }

    return response;
  }

  @override
  Future<DiariesCreateResponse> postDiaryComment({
    required String text,
    required String diaryId,
    required String diaryUserUUID,
  }) {
    return client.postDiaryComment(text, diaryId, diaryUserUUID);
  }

  @override
  Future<void> markAsReadComments(String diaryId) {
    return client.markAsReadDiaryComment(diaryId);
  }
}
