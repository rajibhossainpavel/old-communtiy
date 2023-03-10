import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/analytics.dart';
import 'package:oshiruco_app/application/flavor.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/greeting_state.dart';
import 'package:package_info_plus/package_info_plus.dart';

class GreetingController extends StateNotifier<GreetingState> {
  GreetingController() : super(const GreetingState()) {
    _getVersion();
  }

  Future<void> _getVersion() async {
    final info = await PackageInfo.fromPlatform();
    state = state.copyWith(version: info.version);
  }

  void setLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  Future<void> onTapTermOfUse() async {
    state = state.copyWith(termOfUse: !state.termOfUse);
  }

  Future<void> onTapPrivacyPolicy() async {
    state = state.copyWith(privacyPolicy: !state.privacyPolicy);
  }

  Future<void> onTapNext(BuildContext context) async {
    Analytics.registerStarted();
    routemaster.push('basic_information');
  }

  Future<void> onTapVersion(BuildContext context, WidgetRef ref) async {
    // デバッグ環境のみの機能
    if (flavor == Flavor.production) {
      return;
    }

    final res = await showOkCancelAlertDialog(
      context: context,
      title: 'ユーザーの情報を削除します',
      message: 'この操作は元にもどせません。',
    );

    if (res == null || res == OkCancelResult.cancel) {
      return;
    }

    try {
      await ref.read(appProvider.notifier).resetUserStorageData();
      Phoenix.rebirth(context);
    } catch (e) {
      debugPrint(e.toString());
      showOkAlertDialog(
        context: context,
        title: '処理に失敗しました。',
        message: 'error: ${e.toString()}',
      );
    }
  }
}
