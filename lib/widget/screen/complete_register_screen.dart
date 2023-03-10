import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/provider/complete_register_provider.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';

class CompleteRegisterScreen extends HookConsumerWidget {
  const CompleteRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(completeRegisterProvider);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: OshirucoColors.background,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            '登録完了',
            style: OshirucoTextStyles.large,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Assets.images.registerStep4.image(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '証明書を確認しました。\n登録ありがとうございます！',
                    style: OshirucoTextStyles.medium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Assets.images.complete.image(width: 120, height: 120),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GreenRoundButton(
                'アプリを利用する',
                () => controller.onTapUseApp(),
                true,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
