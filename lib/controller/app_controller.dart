import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/analytics.dart';
import 'package:oshiruco_app/client/api_client/api_client.dart';
import 'package:oshiruco_app/state/app_state.dart';

class AppController extends StateNotifier<AppState> {
  AppController({required this.storage}) : super(const AppState());

  final FlutterSecureStorage storage;

  final String tokenKey = 'token';
  final String uuidKey = 'uuid';
  final String uidKey = 'uid';
  final String deviceTokenKey = 'deviceToken';
  final String isFinishedRegisterBasicInformationKey =
      'isFinishedRegisterBasicInformation';
  final String isFinishedUserVerifyKey = 'isFinishedUserVerify';
  final String chatLatestTimestampsKey = 'chatLatestTimestamps';
  final String conciergeChatTimestampKey = 'conciergeChatTimestamp';

  Map<String, int> decodeMap(Map<String, dynamic> map) {
    final newMap = <String, int>{};
    map.forEach((String key, dynamic value) {
      newMap[key] = int.parse(map[key] as String);
    });
    return newMap;
  }

  Future<void> loadInitialData(
    BuildContext context, {
    bool retried = false,
  }) async {
    try {
      HttpHelper.token = await storage.read(key: tokenKey) ??
          dotenv.env['DEFAULT_TOKEN'] ??
          '';

      final uuid = await storage.read(key: uuidKey) ?? '';
      final uid = await storage.read(key: uidKey) ?? '';
      final deviceToken = await storage.read(key: deviceTokenKey) ?? '';
      final isFinishedRegisterBasicInformation =
          await storage.read(key: isFinishedRegisterBasicInformationKey);
      final isFinishedUserVerify =
          await storage.read(key: isFinishedUserVerifyKey) ?? '0';
      final chatLatestTimestampsJson =
          await storage.read(key: chatLatestTimestampsKey) ?? '{}';
      final formattedChatLatestTimestampsJson =
          chatLatestTimestampsJson.replaceAll("'", '');

      final quotedChatLatestTimestampsJson = formattedChatLatestTimestampsJson
          .replaceAllMapped(RegExp(r'\b[a-zA-Z0-9\-]+\b'), (match) {
        return '"${match.group(0)}"';
      });
      final chatLatestTimestamps = Map<String, int>.from(
        decodeMap(
          jsonDecode(quotedChatLatestTimestampsJson) as Map<String, dynamic>,
        ),
      );
      final conciergeChatTimestamp =
          await storage.read(key: conciergeChatTimestampKey) ?? '0';
      debugPrint(
        '=== fetch Data From secureStorage ===\n{ token: ${HttpHelper.token.isNotEmpty ? HttpHelper.token.substring(0, 10) : HttpHelper.token}..., uuid: $uuid, uid: $uid, deviceToken: $deviceToken, isFinishedRegisterBasicInformation: $isFinishedRegisterBasicInformation, isFinishedUserVerify: $isFinishedUserVerify, chatLatestTimestamps:  }',
      );
      state = state.copyWith(
        loggedOut: false,
        context: context,
        uuid: uuid,
        uid: uid,
        deviceToken: deviceToken,
        isFinishedRegisterBasicInformation:
            isFinishedRegisterBasicInformation != null,
        isFinishedUserVerify: isFinishedUserVerify != null,
        chatLatestTimestamps: chatLatestTimestamps,
        conciergeChatTimestamp: int.parse(conciergeChatTimestamp),
      );
    } on PlatformException {
      // secure storage のバグでエラーになった場合は、1度だけ secure storage のデータを消して再実行する
      // Workaround for https://github.com/mogol/flutter_secure_storage/issues/43
      if (!retried && Platform.isAndroid) {
        await storage.deleteAll();
        await loadInitialData(context, retried: true);
      }
    }
  }

  void restartApplication() => Phoenix.rebirth(state.context!);

  void setLoggedOut(bool loggedOut) {
    state = state.copyWith(loggedOut: loggedOut);
  }

  Future<void> resetUserStorageData() async {
    await storage.delete(key: tokenKey);
    await storage.delete(key: uuidKey);
    await storage.delete(key: uidKey);
    await storage.delete(key: deviceTokenKey);
    await storage.delete(key: isFinishedRegisterBasicInformationKey);
    await storage.delete(key: isFinishedUserVerifyKey);
    await storage.delete(key: chatLatestTimestampsKey);
    await storage.delete(key: conciergeChatTimestampKey);
    _resetState();
  }

  void _resetState() {
    state = state.copyWith(
      uuid: '',
      uid: '',
      deviceToken: '',
      isFinishedRegisterBasicInformation: false,
      isFinishedUserVerify: false,
      conciergeChatTimestamp: 0,
    );
  }

  Future<void> updateAppData({
    required String token,
    required String uuid,
    required String uid,
  }) async {
    await storage.write(key: tokenKey, value: token);
    await storage.write(key: uuidKey, value: uuid);
    await storage.write(key: uidKey, value: uid);

    HttpHelper.token = token;
    state = state.copyWith(
      uuid: uuid,
      uid: uid,
    );
  }

  Future<void> updateToken({required String token}) async {
    HttpHelper.token = token;
    await storage.write(key: tokenKey, value: token);
  }

  Future<void> updateUuid({required String uuid}) async {
    await storage.write(key: uuidKey, value: uuid);
    state = state.copyWith(uuid: uuid);

    Analytics.uuid(uuid);
  }

  Future<void> updateUid({required String uid}) async {
    await storage.write(key: uidKey, value: uid);
    state = state.copyWith(uid: uid);
  }

  Future<void> updateDeviceToken({required String deviceToken}) async {
    await storage.write(key: deviceTokenKey, value: deviceToken);
    state = state.copyWith(deviceToken: deviceToken);
  }

  Future<void> updateUpdateRegisterBasicInformationFlag(
      {required bool flag}) async {
    await storage.write(
        key: isFinishedRegisterBasicInformationKey, value: flag ? '1' : '0');
    state = state.copyWith(isFinishedRegisterBasicInformation: flag);
  }

  Future<void> updateFinishedUserVerifyFlag({required bool flag}) async {
    await storage.write(key: isFinishedUserVerifyKey, value: flag ? '1' : '0');
    state = state.copyWith(isFinishedUserVerify: flag);
  }

  Future<void> updateChatLatestTimeStamp({
    required String chatKey,
    required int timestamp,
  }) async {
    final updatedChatLatestTimeStamp = state.chatLatestTimestamps;
    updatedChatLatestTimeStamp[chatKey] = timestamp;
    await storage.write(
        key: chatLatestTimestampsKey,
        value: updatedChatLatestTimeStamp.toString());
    state = state.copyWith(chatLatestTimestamps: updatedChatLatestTimeStamp);
  }

  Future<void> updateConciergeChatTimestamp(int timestamp) async {
    await storage.write(
      key: conciergeChatTimestampKey,
      value: timestamp.toString(),
    );
    state = state.copyWith(conciergeChatTimestamp: timestamp);
  }
}
