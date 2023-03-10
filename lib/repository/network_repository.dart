import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/response/next_point_response/next_point_response.dart';

abstract class NetWorkRepositoryInterface {
  /// 次回のpoint付与日、point数を取得
  Future<NextPointResponse> getNextPoints();
}

class NetWorkRepository implements NetWorkRepositoryInterface {
  const NetWorkRepository(this._client);

  final OshirucoApiClient _client;

  @override
  Future<NextPointResponse> getNextPoints() => _client.getNextPointsRequest();
}
