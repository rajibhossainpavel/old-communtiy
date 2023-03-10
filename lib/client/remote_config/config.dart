import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:oshiruco_app/model/remote_config/app_version/app_version.dart';
import 'package:oshiruco_app/model/remote_config/banner/banner.dart';
import 'package:oshiruco_app/model/remote_config/concierge/concierge.dart';

class Config {
  Config();
  static const _bannerKey = 'banners';
  static const _conciergeKey = 'concierge';
  static const _appVersionKey = 'app_version';
  static const _maintenanceKey = 'maintenance';

  static late RemoteConfig _remoteConfig;

  static Future<void> init() async {
    try {
      _remoteConfig = RemoteConfig.instance;

      await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(seconds: 1),
      ));

      await _remoteConfig.fetchAndActivate();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static RemoteConfig remoteConfig() => _remoteConfig;

  static void dispose() => _remoteConfig.dispose();

  static Banner? getBanner(BannerPlace place) {
    final j = _remoteConfig.getString(_bannerKey);
    final b = Banner.fromJsonMap(jsonDecode(j) as Map<String, dynamic>);
    return b[place];
  }

  static Concierge? getConcierge() {
    final value = _remoteConfig.getString(_conciergeKey);
    if (value.isEmpty) {
      return null;
    }
    return Concierge.fromJson(jsonDecode(value) as Map<String, dynamic>);
  }

  static AppVersion? getAppVersion() {
    final value = _remoteConfig.getString(_appVersionKey);
    debugPrint("--remote config app_version");
    debugPrint(value.toString());

    if (value.isEmpty) {
      return null;
    }
    return AppVersion.fromJson(jsonDecode(value) as Map<String, dynamic>);
  }

  static String? getMaintenance() {
    final value = _remoteConfig.getString(_maintenanceKey);
    debugPrint("--remote config maintenance");
    debugPrint(value.toString());
    if (value.isEmpty) {
      return null;
    }
    return value;
  }
}
