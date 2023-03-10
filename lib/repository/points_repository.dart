import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/enum/purchase_item_type.dart';
import 'package:oshiruco_app/model/point_item/point_item.dart';
import 'package:oshiruco_app/model/response/points_transaction_response/points_transaction_response.dart';
import 'package:oshiruco_app/model/response/updated_points_response/updated_points_response.dart';

abstract class PointsRepositoryInterface {
  /// pointとあいさつの交換
  Future<UpdatedPointsResponse> putsPointsExchange(int points, int greetings);

  /// pointItemの一覧取得
  Future<List<PointItem>> getPointsItems(PurchaseItemType type);

  /// pointの購入(for ios)
  Future<int> postBuyPointOnAppStore({
    required String receipt,
    required String productId,
  });

  /// pointの購入(for android)
  Future<int> postBuyPointOnPlayStore({
    required String receipt,
    required String signature,
  });

  // subscription(for ios)
  Future<void> postSubscriptionPointOnAppStore({
    required String receipt,
    required String productId,
    required String datingState,
  });

  // subscription(for android)
  Future<void> postSubscriptionPointOnPlayStore({
    required String receipt,
    required String signature,
    required String datingState,
  });

  Future<void> postEvent(String eventId);

  /// pointの履歴取得
  Future<PointsTransactionResponse> getPointsTransaction(int page);
}

class PointsRepository implements PointsRepositoryInterface {
  const PointsRepository(this._client);

  final OshirucoApiClient _client;

  @override
  Future<UpdatedPointsResponse> putsPointsExchange(int points, int greetings) =>
      _client.putsPointsExchangeRequest(points, greetings);

  @override
  Future<List<PointItem>> getPointsItems(PurchaseItemType type) async {
    final response = await _client.getPointsItemRequest(
      type.toParam(),
    );
    return response.products;
  }

  @override
  Future<int> postBuyPointOnAppStore({
    required String receipt,
    required String productId,
  }) =>
      _client.postBuyPointOnAppStoreRequest(
        receipt: receipt,
        productId: productId,
      );

  @override
  Future<int> postBuyPointOnPlayStore({
    required String receipt,
    required String signature,
  }) =>
      _client.postBuyPointOnPlayStoreRequest(
        receipt: receipt,
        signature: signature,
      );

  Future<int> getPoints(String id) {
    return _client.getPoints(userId: id);
  }

  @override
  Future<void> postSubscriptionPointOnAppStore({
    required String receipt,
    required String productId,
    required String datingState,
  }) async {
    await _client.postSubscriptionPointOnAppStoreRequest(
      receipt: receipt,
      productId: productId,
      datingState: datingState,
    );
  }

  @override
  Future<void> postSubscriptionPointOnPlayStore({
    required String receipt,
    required String signature,
    required String datingState,
  }) =>
      _client.postSubscriptionPointOnPlayStoreRequest(
        receipt: receipt,
        signature: signature,
        datingState: datingState,
      );

  @override
  Future<PointsTransactionResponse> getPointsTransaction(int page) =>
      _client.getPointsTransaction(page: page);

  @override
  Future<void> postEvent(String eventId) => _client.postPointsEvent(eventId);
}
