import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';

abstract class SettingRepositoryInterface {
  Future<void> updateVisitHistory(bool enable);
}

class SettingRepository implements SettingRepositoryInterface {
  SettingRepository({required this.client});

  final OshirucoApiClient client;

  @override
  Future<void> updateVisitHistory(bool enable) {
    return client.updateVisitHistory(enable ? 'on' : 'off');
  }
}
