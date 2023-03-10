import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/controller/app_controller.dart';
import 'package:oshiruco_app/controller/edit_my_page_controller.dart';
import 'package:oshiruco_app/controller/fcm_token_controller.dart';
import 'package:oshiruco_app/controller/my_page_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/application_initialize_provider.dart';
import 'package:oshiruco_app/provider/edit_my_page_controller_provider.dart';
import 'package:oshiruco_app/provider/my_page_controller_provider.dart';
import 'package:oshiruco_app/router.dart';

class RestoreIosAccount extends HookConsumerWidget {
  final String email;
  const RestoreIosAccount({required this.email, Key? key}) : super(key: key);

  void restoreAccount(
      EditMyPageController controller,
      AppController appController,
      FcmTokenController fcmController,
      MyPageController myPageController,
      BuildContext context) async {
    debugPrint('##### ' + email);
    final result =
        await controller.restoreAccountOnTapped(context, userEmail: email);
    if (result.isRestore) {
      await appController.updateAppData(
        uuid: result.user!.uuid,
        uid: result.user!.userID,
        token: result.token,
      );

      await fcmController.registerFcmToken();
      myPageController.updateUser(result.user!);
      await Future.delayed(const Duration(seconds: 4), () {
        Navigator.popUntil(context, (route) => route.isFirst);
        routemaster.replace('/', queryParameters: {
          navigateToHomeParamKey: 'true',
        });
      });
    } else {
      await Future.delayed(const Duration(seconds: 3), () => routemaster.pop());
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(editMyPageControllerProvider.notifier);
    final appController = ref.watch(appProvider.notifier);
    final fcmController = ref.watch(fcmTokenProvider);
    final myPageController = ref.watch(myPageControllerProvider.notifier);
    restoreAccount(
        controller, appController, fcmController, myPageController, context);
    return Scaffold(
      appBar: AppBar(),
      body: WillPopScope(
        onWillPop: () async => false,
        child: const Center(child: OshirucoCircleProgressIndicator()),
      ),
    );
  }
}
