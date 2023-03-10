import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/device_information/device_information.dart';
import 'package:oshiruco_app/model/enum/os.dart';
import 'package:oshiruco_app/model/response/application_init_response/application_init_response.dart';

abstract class ApplicationRepositoryInterface {
  /// 初期化処理
  Future<ApplicationInitResponse> fetchApplicationInformation({
    required DeviceInformation information,
    required String uuid,
    required String uid,
  });

  /// ログイン
  Future<String> login(
      {required String email, required DeviceInformation information});
}

class ApplicationRepository implements ApplicationRepositoryInterface {
  ApplicationRepository({required this.client});
  final OshirucoApiClient client;

  @override
  Future<ApplicationInitResponse> fetchApplicationInformation({
    required DeviceInformation information,
    required String uuid,
    required String uid,
  }) async {
    final locale = information.locale;
    return client.applicationInitializeRequest(
      appVer: information.appVersion.toString(),
      os: information.os.stringfy(),
      osVer: information.osVersion.toString(),
      model: information.model,
      carrier: information.carrier,
      locale: locale != null ? locale.toString() : '',
      uuid: uuid,
      uid: uid,
    );
  }

  @override
  Future<String> login(
      {required String email, required DeviceInformation information}) async {
    final locale = information.locale;
    return await client.login(
        email,
        information.os.stringfy(),
        information.appVersion.toString(),
        information.osVersion,
        information.model,
        information.carrier,
        locale != null ? locale.toString() : '');
  }
}
