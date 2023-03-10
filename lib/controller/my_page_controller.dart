import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/flavor.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/my_page_state.dart';
import 'package:package_info_plus/package_info_plus.dart';

class MyPageController extends StateNotifier<MyPageState> {
  MyPageController({
    required String uuid,
    required UsersRepository usersRepository,
  }) : super(const MyPageState()) {
    _uuid = uuid;
    _usersRepository = usersRepository;
    fetchUser();
    _getVersion();
  }

  late final String _uuid;
  late final UsersRepository _usersRepository;

  Future<void> fetchUser() async {
    final res = await _usersRepository.fetchUserByUuid(_uuid);
    state = state.copyWith(user: res.user);
  }

  void updateUser(User user) {
    state = state.copyWith(user: user);
  }

  Future<void> _getVersion() async {
    final info = await PackageInfo.fromPlatform();
    state = state.copyWith(version: info.version);
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
