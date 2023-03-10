import 'dart:io';

import 'package:carrier_info/carrier_info.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:flutter/material.dart';
import 'package:oshiruco_app/model/device_information/device_information.dart';
import 'package:oshiruco_app/model/enum/os.dart';
import 'package:package_info_plus/package_info_plus.dart';

abstract class DeviceInformationRepositoryInterface {
  Future<DeviceInformation> fetchDeviceInfo();
}

class DeviceInformationRepository
    implements DeviceInformationRepositoryInterface {
  @override
  Future<DeviceInformation> fetchDeviceInfo() async {
    final packageInformation = await PackageInfo.fromPlatform();
    final deviceLocale = await Devicelocale.currentAsLocale;
    debugPrint(
      deviceLocale != null
          ? deviceLocale.toString()
          : 'unable to fetch deviceLocale',
    );
    final deviceInfo = DeviceInfoPlugin();
    OS os;
    String osVersion, model;
    if (Platform.isAndroid) {
      final info = await deviceInfo.androidInfo;
      os = OSExtension.fromString('android');
      osVersion = info.version.release ?? '';
      model = info.model ?? '';
    } else {
      final info = await deviceInfo.iosInfo;
      os = OSExtension.fromString('ios');
      osVersion = info.systemVersion ?? '';
      model = info.utsname.machine ?? '';
    }
    String carrier = "none";
    try {
      final mobileCountryCode = await CarrierInfo.mobileCountryCode ?? '';
      final mobileNetworkCode = await CarrierInfo.mobileNetworkCode ?? '';
      carrier = '$mobileCountryCode$mobileNetworkCode';
    } catch (e) {
      debugPrint(e.toString());
    }

    return DeviceInformation(
      appVersion: packageInformation.version,
      locale: deviceLocale,
      os: os,
      osVersion: osVersion,
      model: model,
      carrier: carrier,
    );
  }
}
