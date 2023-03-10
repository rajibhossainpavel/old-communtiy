import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/certificate.dart';
import 'package:oshiruco_app/provider/select_certificate_provider.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';

class SelectCertificateScreen extends HookConsumerWidget {
  const SelectCertificateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectCertificateProvider);
    final controller = ref.watch(selectCertificateProvider.notifier);

    return Scaffold(
      backgroundColor: OshirucoColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          '基本情報入力',
          style: OshirucoTextStyles.large,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Assets.images.registerStep2.image(),
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '本人確認のため、以下いずれかの確認資料を利用します。どちらを利用するか、選んでください。',
                    style: OshirucoTextStyles.medium,
                  ),
                ),
                const SizedBox(height: 16),
                _certificateRadioButtons(ref),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '本アプリでは、安全安心にサービスをご利用になるために顔写真付きの証明証が必要です。ご提出された画像は年齢確認以外では、一切使用しません。',
                    style: OshirucoTextStyles.medium,
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 40),
            child: GreenRoundButton(
              '次へ',
              () => controller.onTapNext(),
              state.isInputted,
            ),
          ),
        ],
      ),
    );
  }

  Widget _certificateRadioButtons(WidgetRef ref) {
    final state = ref.watch(selectCertificateProvider);
    final controller = ref.read(selectCertificateProvider.notifier);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RadioListTile<Certificate>(
          tileColor: Colors.white,
          value: Certificate.driverLicense,
          groupValue: state.certificate,
          onChanged: controller.onSelectCertificate,
          title: const Text(
            '免許証',
            style: OshirucoTextStyles.medium,
          ),
        ),
        const OshirucoDivider(),
        RadioListTile<Certificate>(
          tileColor: Colors.white,
          value: Certificate.passport,
          groupValue: state.certificate,
          onChanged: controller.onSelectCertificate,
          title: const Text(
            'パスポート',
            style: OshirucoTextStyles.medium,
          ),
        ),
        const OshirucoDivider(),
        RadioListTile<Certificate>(
          tileColor: Colors.white,
          value: Certificate.insuranceCard,
          groupValue: state.certificate,
          onChanged: controller.onSelectCertificate,
          title: const Text(
            '保険証',
            style: OshirucoTextStyles.medium,
          ),
        ),
      ],
    );
  }
}
