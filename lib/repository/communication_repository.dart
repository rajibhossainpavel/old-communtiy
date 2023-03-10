import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/communication_user/communication_user.dart';
import 'package:oshiruco_app/model/response/communications/communications_response.dart';

abstract class CommunicationRepositoryInterface {
  /// matching周りのUUIDを取得する。
  Future<CommunicationsResponse> communications();

  /// match済みのuser一覧
  Future<List<CommunicationUser>> matchedUser();

  /// Likeされたuser一覧
  Future<List<CommunicationUser>> fromLikedUser(int page);

  /// Likeしたuser一覧
  Future<List<CommunicationUser>> toLikedUser(int page);

  /// message送信時に通知を送信する。
  /// 戻り値は ture: 成功, false 失敗
  Future<bool> postCommunicationMessages(
    String targetID, {
    String message = '',
  });
}

class CommunicationRepository implements CommunicationRepositoryInterface {
  CommunicationRepository({required OshirucoApiClient client})
      : _client = client;

  final OshirucoApiClient _client;

  @override
  Future<CommunicationsResponse> communications() => _client.matchingsRequest();

  @override
  Future<List<CommunicationUser>> matchedUser() async {
    try {
      final res = await _client.matchedUserRequest();
      return res.userLikedInfos;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CommunicationUser>> toLikedUser(int page) async {
    try {
      final res = await _client.toLikedUserRequest(page);
      return res.userLikedInfos;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CommunicationUser>> fromLikedUser(int page) async {
    try {
      final res = await _client.fromLikedUserRequest(page);
      return res.userLikedInfos;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> postCommunicationMessages(
    String targetID, {
    String message = '',
  }) async {
    try {
      final res =
          await _client.communicationMessageRequest(targetID, message: message);
      return res;
    } catch (e) {
      return false;
    }
  }
}
