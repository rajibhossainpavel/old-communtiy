import 'dart:io';

import 'package:flutter/services.dart';

class PlatformClient {
  static const _platform = MethodChannel('jp.cayto.oshiruco');

  /// 端末に紐付いているアカウントを選択
  /// ※ Android のみ使用可能
  static Future<String?> chooseAccount() async {
    if (Platform.isIOS) {
      throw UnimplementedError();
    }

    return await _platform.invokeMethod<String>('chooseAccount');
  }

  /// ホーム画面のバッジ数を設定
  static Future<void> setNotificationBadgeNumber(int number) async {
    await _platform.invokeMethod<void>('setNotificationBadgeNumber', number);
  }
}
