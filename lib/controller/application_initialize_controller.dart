import 'dart:io';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/client/platform_client.dart';
import 'package:oshiruco_app/client/remote_config/config.dart';
import 'package:oshiruco_app/controller/app_controller.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/model/enum/register_state.dart';
import 'package:oshiruco_app/provider/application_initialize_provider.dart';
import 'package:oshiruco_app/repository/device_information_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/application_initialize_state/application_initialize_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_login_bounus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:version/version.dart';

class ApplicationInitializeController
    extends StateNotifier<ApplicationInitializeState> {
  ApplicationInitializeController({
    required AppController appController,
    required UsersRepository usersRepository,
    required DeviceInformationRepositoryInterface deviceInfoRepo,
    required FirebaseAuth authInstance,
  })  : _appController = appController,
        _usersRepository = usersRepository,
        _deviceInfoRepo = deviceInfoRepo,
        _authInstance = authInstance,
        super(
          const ApplicationInitializeState(),
        );
  final AppController _appController;
  final UsersRepository _usersRepository;
  final DeviceInformationRepositoryInterface _deviceInfoRepo;
  final FirebaseAuth _authInstance;
  late String _uuid;

  Future<RegisterState> loadInitialData(
    BuildContext context,
    WidgetRef ref, {
    String uuid = '',
    String uid = '',
  }) async {
    try {
      // app/initを叩く
      final deviceInfo = await _deviceInfoRepo.fetchDeviceInfo();

      // applicationInitRepoProvider を依存として持つとトークンが更新されない場合があったので、
      // 常に context から最新の取得 applicationInitRepoProvider を取得して使用する
      final appInfo = await ref
          .read(applicationInitRepoProvider)
          .fetchApplicationInformation(
            information: deviceInfo,
            uuid: uuid,
            uid: uid,
          );
      debugPrint("UUID-TOKEN:" + appInfo.uuid + "-" + appInfo.token);

      state = state.copyWith(information: appInfo);

      _uuid = appInfo.uuid;
      _appController.updateUuid(uuid: _uuid);

      await _findOrCreateFirebaseUserAndSetUid();
      await checkForceUpdateAndMaintenance(context);

      final registerStateString = appInfo.info?.registerState ?? '';
      final registerState =
          RegisterStateExtension.fromString(registerStateString);

      if (registerState == RegisterState.verified) {
        // 古いバージョンのアプリではフラグが保存されていないので、全て立てて保存しておく
        await _appController.updateFinishedUserVerifyFlag(flag: true);
        await _appController.updateUpdateRegisterBasicInformationFlag(
            flag: true);
      }

      return registerState;
    } catch (e) {
      if (e is! AppVersionException && e is! MaintenanceException) {
        showErrorDialog(context, e);
      }
      rethrow;
    }
  }

  Future<void> clearData() async {
    await _appController.resetUserStorageData();
    _appController.setLoggedOut(true);
    state = const ApplicationInitializeState();
  }

  Future<void> checkForceUpdateAndMaintenance(BuildContext context) async {
    try {
      await _checkForceUpdate();
      await _checkMaintenance();
    } catch (e) {
      if (e is AppVersionException) {
        await showOkAlertDialog(
          context: context,
          okLabel: 'アップデート',
          title: 'アップデートのお願い',
          message: '最新版を公開しました\nアップデート後にご利用ください',
        );
        StoreRedirect.redirect(
          androidAppId: 'jp.cayto.oshiruco.android',
          iOSAppId: '1478365199',
        );
      } else if (e is MaintenanceException) {
        await showOkAlertDialog(
          context: context,
          // title:'',
          message: e.msg,
        );
      }

      rethrow;
    }
  }

  Future<bool> login(BuildContext context, WidgetRef ref) async {
    // iOS はログイン機能が無いので何もせず処理終了
    if (Platform.isIOS) {
      return false;
    }

    final email = await PlatformClient.chooseAccount() ?? '';
    if (email.isEmpty) {
      return false;
    }

    try {
      final deviceInfo = await _deviceInfoRepo.fetchDeviceInfo();
      final token = await ref.read(applicationInitRepoProvider).login(
            email: email,
            information: deviceInfo,
          );
      if (token.isNotEmpty) {
        await _appController.updateToken(token: token);
        await _appController.updateUpdateRegisterBasicInformationFlag(
            flag: true);
        await _appController.updateFinishedUserVerifyFlag(flag: true);
      }
    } catch (err) {
      await showErrorDialog(context, err);
      return false;
    }

    final register = await loadInitialData(context, ref);
    if (register == RegisterState.verified) {
      await _appController.updateUuid(uuid: _uuid);
      await _appController.updateUpdateRegisterBasicInformationFlag(flag: true);
      await _appController.updateFinishedUserVerifyFlag(flag: true);

      routemaster.replace(
        '/',
        queryParameters: {
          navigateToHomeParamKey: 'true',
        },
      );
      return true;
    } else {
      await showErrorDialogWithMessage(
          context, 'このメールアドレスは過去に「おしるこ」で使った事がありません。');
      return false;
    }
  }

  Future<void> checkAndShowLoginBonus(
    BuildContext context, {
    required int points,
  }) async {
    if (points < 1) {
      return;
    }
    await showLoginDialog(context, points: points);
  }

  Future<void> checkAndShowProfileEnsureScreen() async {
    try {
      final userResponse = await _usersRepository.fetchUserByUuid(_uuid);

      if (userResponse.result != 'success' &&
          userResponse.msg == 'deviceChanged') {
        throw const DeviceChangedException();
      }

      if (userResponse.user.photoPaths.isEmpty) {
        await routemaster.push('/profile_ensure').result;
      }
    } on DeviceChangedException {
      rethrow;
    } catch (e) {
      // Do nothing due to priority for UX;
      debugPrint(e.toString());
    }
  }

  Future<void> _checkForceUpdate() async {
    final force = Config.getAppVersion()?.force ?? '';
    final forceAppVer = Version.parse(force);
    final packageInfo = await PackageInfo.fromPlatform();
    final currentAppVer = Version.parse(packageInfo.version);

    if (forceAppVer > currentAppVer) {
      debugPrint("!!!!FORCE UPDATE FLOW!!!!");
      throw AppVersionException();
    }
  }

  Future<void> _checkMaintenance() async {
    final maintenanceMessage = Config.getMaintenance() ?? '';
    if (maintenanceMessage.isNotEmpty) {
      debugPrint("!!!!MAINTENANCE FLOW!!!!");
      throw MaintenanceException(maintenanceMessage);
    }
  }

  // firebaseからuserをとってきてuidを格納
  Future<void> _findOrCreateFirebaseUserAndSetUid() async {
    var uid = '';
    final currentUser = _authInstance.currentUser;
    debugPrint('CURRENT-USER-UID: ${currentUser?.uid}');
    if (currentUser == null || currentUser.uid.isEmpty) {
      final userCredential = await _authInstance.signInAnonymously();
      debugPrint(
          'Could not find User... Then create new User with uid: ${userCredential.user?.uid}');
      uid = userCredential.user?.uid ?? '';
    } else {
      debugPrint('find User from Firebase User(uid: ${currentUser.uid})');
      uid = currentUser.uid;
    }
    await _appController.updateUid(uid: uid);
  }
}
