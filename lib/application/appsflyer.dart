import 'package:appsflyer_sdk/appsflyer_sdk.dart';

import 'package:oshiruco_app/application/flavor.dart';
import 'package:oshiruco_app/model/enum/certificate.dart';

class AppsFlyer {
  AppsFlyer() {
    // todo(endoidou) envから取得する
    const afDevKey = 'Ek8w9kjxREYHqGrvRudjme';
    const afAppId = '1478365199';

    final appsFlyerOptions = AppsFlyerOptions(
      afDevKey: afDevKey,
      appId: afAppId,
      showDebug: flavor != Flavor.production,
      timeToWaitForATTUserAuthorization: 30,
    );

    _instance = AppsflyerSdk(appsFlyerOptions);
  }

  late final AppsflyerSdk _instance;

  Future<void> init() async {
    _instance.initSdk(
      registerConversionDataCallback: true,
      registerOnAppOpenAttributionCallback: true,
      registerOnDeepLinkingCallback: true,
    );
  }

  Future<void> registerStarted(Certificate certificate) async {
    await _instance.logEvent('af_id_verify', <String, String>{
      'CertificateType': certificate.toRequest,
    });
  }
}
