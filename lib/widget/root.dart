import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/model/enum/register_state.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/application_initialize_provider.dart';
import 'package:oshiruco_app/provider/error_provider.dart';
import 'package:oshiruco_app/widget/screen/greeting_screen.dart';
import 'package:oshiruco_app/widget/screen/home_screen.dart';
import 'package:oshiruco_app/widget/screen/loading_screen.dart';
import 'package:oshiruco_app/widget/screen/opening_screen.dart';
import 'package:oshiruco_app/widget/screen/reject_screen.dart';

class Root extends HookConsumerWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Secure Storageから保存されているデータをとってくる
    final controller = ref.watch(appProvider.notifier);
    final appState = ref.watch(appProvider);
    final errorState = ref.watch(errorProvider);

    useEffect(() {
      if (errorState.error != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          showHttpErrorDialog(context, errorState.error!);
        });
      }
    }, [errorState.error]);

    final create = useMemoized(
      () => controller.loadInitialData(context),
      [appState.loggedOut],
    );

    final snapshot = useFuture(create);
    if (snapshot.error != null) {
      return Scaffold(
          body: Center(child: Text(snapshot.error?.toString() ?? '')));
    }

    if (snapshot.connectionState == ConnectionState.done) {
      return const RootBase();
    } else {
      return const LoadingScreen();
    }
  }
}

class RootBase extends HookConsumerWidget {
  const RootBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Secure Storageに保存されていたデータを元にinitを叩く。
    final controller = ref.watch(applicationInitializeProvider.notifier);
    final fcmController = ref.watch(fcmTokenProvider);
    final appState = ref.watch(appProvider);

    final create = useMemoized(() async {
      // プライバシーポリシー同意前にデバイス情報を送信すると Google にリジェクトされるので API 実行しない
      if (!appState.isFinishedRegisterBasicInformation &&
          appState.uuid.isEmpty) {
        await controller.checkForceUpdateAndMaintenance(context);
        return RegisterState.none;
      }

      final initialData = await controller.loadInitialData(
        context,
        ref,
        uuid: appState.uuid,
        uid: appState.uid,
      );
      await fcmController.registerFcmToken();
      return initialData;
    }, [appState.loggedOut]);
    final snapshot = useFuture(create);

    if (snapshot.hasError) {
      if (snapshot.error is MaintenanceException) {
        if (Platform.isAndroid) {
          // androidでの動作未確認
          SystemNavigator.pop();
        }
        exit(1);
      }
      // エラーの場合はスプラッシュ画面を出したままにする
      return const OpeningScreen();
    }

    if (snapshot.connectionState != ConnectionState.done) {
      debugPrint('--current connectionState--');
      debugPrint(snapshot.connectionState.toString());
      return const OpeningScreen();
    }

    final registerState = snapshot.data;

    switch (registerState) {
      case RegisterState.registered:
        // app_initの初期起動済み
        debugPrint('--IT IS REGISTERED FLOW--');
        return const GreetingScreen();
      case RegisterState.verified:
        // 認証済み
        return const HomeScreen();
      case RegisterState.rejected:
        // NOTE
        // androidでのビルドができるようになったあと
        // rejectのレスポンスを200で返し、stateをリジェクトにして対応する
        return const RejectScreen();
      default:
        // verified, reject以外
        debugPrint('--IT IS REJECT FLOW--');
        return const GreetingScreen();
    }
  }
}
