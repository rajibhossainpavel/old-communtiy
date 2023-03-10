import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';

class RejectScreen extends StatelessWidget {
  const RejectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: OshirucoColors.green,
      ),
      body: SafeArea(
        child: Container(
          color: OshirucoColors.rejectBackground,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Assets.images.oshirucoLogo.image(width: 240),
                    const SizedBox(height: 45),
                    const Text(
                      '現在利用できません',
                      style: OshirucoTextStyles.largeBold,
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'このアカウントは退会のご希望により退会処理が完了しているか、利用規約違反のため利用が制限されています。',
                      style: OshirucoTextStyles.medium,
                    ),
                    const SizedBox(height: 72),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.icons.admin.image(height: 60, width: 60),
                        const SizedBox(width: 6),
                        const Text('おしるこ自治会', style: OshirucoTextStyles.small),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GreenRoundButton(
                '確認',
                () {
                  if (Platform.isAndroid) {
                    // androidでの動作未確認
                    SystemNavigator.pop();
                  }
                  exit(1);
                },
                true,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
