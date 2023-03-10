import 'package:firebase_analytics/firebase_analytics.dart';

import 'package:oshiruco_app/model/enum/certificate.dart';
import 'package:oshiruco_app/model/enum/diary_type.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/enum/prefecture.dart';

class Analytics {
  const Analytics();

  static final FirebaseAnalytics _instance = FirebaseAnalytics.instance;

  static Future<void> setCurrentScreen(String path) async {
    await _instance.setCurrentScreen(screenName: path);
  }

  static Future<void> uuid(String uuid) async {
    await _instance.setUserId(id: uuid);
  }

  // 登録イベント開始
  static Future<void> registerStarted() async {
    await _instance.logEvent(name: 'register_started');
  }

  static Future<void> registerUser({
    required Gender? gender,
    required Prefecture? livePlace,
    required Prefecture? birthPlace,
  }) async {
    if (gender == null || livePlace == null || birthPlace == null) {
      return;
    }

    await _instance.logEvent(
      name: 'register_user',
      parameters: {
        'gender': enumToString(gender),
        'livePlace': enumToString(livePlace),
        'birthPlace': enumToString(birthPlace),
      },
    );
  }

  static Future<void> registerSelectedCertificate(
      Certificate? certificate) async {
    if (certificate == null) {
      return;
    }
    await _instance.logEvent(
        name: 'register_selected_certificate',
        parameters: {'type': enumToString(certificate)});
  }

  static Future<void> registerVerified() async {
    await _instance.logEvent(name: 'register_verified');
  }

  static Future<void> registerCompleted() async {
    await _instance.logEvent(name: 'register_completed');
  }

  static Future<void> registerCompletedAzuki() async {
    await _instance.logEvent(name: 'register_completed_azuki');
  }
}
