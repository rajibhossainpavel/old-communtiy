import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';

class FcmTokenController {
  FcmTokenController({required this.client});
  final OshirucoApiClient client;

  Future<void> registerFcmToken() async {
    try {
      final token = await FirebaseMessaging.instance.getToken();
      if (token == null) {
        return;
      }

      await client.registerFcmToken(token);
    } catch (e) {
      // Do nothing due to priority for UX;
      debugPrint(e.toString());
    }
  }
}
