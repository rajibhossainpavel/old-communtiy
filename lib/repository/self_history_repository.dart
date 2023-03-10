import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/enum/self_history_key_type.dart';
import 'package:oshiruco_app/model/enum/self_history_status.dart';
import 'package:oshiruco_app/model/response/selfhistory/self_history_response.dart';

abstract class SelfHistoryRepositoryInterface {
  /// 自分史を取得
  Future<SelfHistoryResponse> fetchSelfHistory({
    String? targetUUID,
    required int age,
    required SelfHistoryStatus status,
  });

  /// 自分史を投稿
  Future<void> putSelfHistory({
    required int generation,
    required SelfHistoryKeyType key,
    required String value,
  });

  /// 自分史の画像投稿
  Future<void> putSelfHistoryImage({
    required int generation,
    required int index,
    required SelfHistoryKeyType type,
    required String value,
  });

  /// 自分史の画像削除
  Future<void> deleteSelfHistoryImage({
    required int generation,
    required int index,
    required SelfHistoryKeyType key,
  });

  /// 自分史のstatusを更新
  Future<void> putSelfHistoryStatus(
    String id, {
    required SelfHistoryStatus status,
  });

  /// 自分史を公開
  Future<void> publishSelfHistory();
}

class SelfHistoryRepository implements SelfHistoryRepositoryInterface {
  SelfHistoryRepository({required this.client});
  final OshirucoApiClient client;
  @override
  Future<SelfHistoryResponse> fetchSelfHistory({
    String? targetUUID,
    required int age,
    required SelfHistoryStatus status,
  }) async {
    return targetUUID == null
        ? client.ownSelfHistoryRequest(
            age: age,
            status: status.toParam(),
          )
        : client.selfHistoryRequest(
            targetUUID: targetUUID,
            age: age,
            status: status.toParam(),
          );
  }

  @override
  Future<void> putSelfHistory({
    required int generation,
    required SelfHistoryKeyType key,
    required String value,
  }) async {
    return client.putSelfHistoryRequest(
      generation: generation,
      key: key.toParam(),
      value: value,
    );
  }

  @override
  Future<void> putSelfHistoryImage({
    required int generation,
    required int index,
    required SelfHistoryKeyType type,
    required String value,
  }) async {
    return client.putSelfHistoryImageRequest(
      generation: generation,
      index: index,
      key: type.toParam(),
      type: type.toImageParam(),
      value: value,
    );
  }

  @override
  Future<void> deleteSelfHistoryImage({
    required int generation,
    required int index,
    required SelfHistoryKeyType key,
  }) async {
    return client.deleteSelfHistoryImageRequest(
      generation: generation,
      index: index,
      key: key.toParam(),
    );
  }

  @override
  Future<void> putSelfHistoryStatus(
    String id, {
    required SelfHistoryStatus status,
  }) async {
    return client.putSelfHistoryStatusRequest(
      id,
      status: status.toParam(),
    );
  }

  @override
  Future<void> publishSelfHistory() async {
    return client.publishSelfHistoryRequest();
  }
}
