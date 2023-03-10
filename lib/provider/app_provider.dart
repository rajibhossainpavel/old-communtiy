import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/app_controller.dart';
import 'package:oshiruco_app/state/app_state.dart';

final flutterSecureStorageProvider = Provider(
  (_) => const FlutterSecureStorage(),
);

final appProvider = StateNotifierProvider<AppController, AppState>(
  (ref) => AppController(
    storage: ref.watch(flutterSecureStorageProvider),
  ),
);

final uuidProvider = Provider<String>(
  (ref) => ref.watch(appProvider).uuid,
);

final uidProvider = Provider<String>(
  (ref) => ref.watch(appProvider).uid,
);

final chatLatestTimestampsProvider = Provider<Map<String, int>>(
  (ref) => ref.watch(appProvider).chatLatestTimestamps,
);

final contextProvider = Provider<BuildContext>(
  (ref) => ref.watch(appProvider).context!,
);

final conciergeChatTimestampProvider = Provider<int>(
  (ref) => ref.watch(appProvider).conciergeChatTimestamp,
);
