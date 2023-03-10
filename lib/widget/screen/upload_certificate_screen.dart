import 'dart:io';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/certificate.dart';
import 'package:oshiruco_app/provider/select_certificate_provider.dart';
import 'package:oshiruco_app/provider/upload_certificate_provider.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';

class UploadCertificateScreen extends HookConsumerWidget {
  const UploadCertificateScreen(this.certificate, {Key? key}) : super(key: key);
  static const certificationType = 'certification-type';

  final Certificate certificate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(uploadCertificateProvider);
    final certificateType = ref.watch(selectCertificateProvider).certificate;
    final controller = ref.watch(uploadCertificateProvider.notifier);
    return Scaffold(
      backgroundColor: OshirucoColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          '身分証登録',
          style: OshirucoTextStyles.large,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Assets.images.registerStep3.image(),
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Text(
                  '${certificate.toLabel()}で登録を進めます。\n'
                  '${certificate.toLabel()}を用意して撮影してください。',
                  style: OshirucoTextStyles.medium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: _sampleImage(ref, certificate),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: GreenRoundButton(
                    '${certificate.toLabel()}を撮影する',
                    () {
                      ref
                          .read(uploadCertificateProvider.notifier)
                          .onTapTakePhoto(context, certificate);
                    },
                    true,
                  ),
                ),
                const SizedBox(height: 40),
                _warning(context),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GreenRoundButton(
                    '次へ',
                    () {
                      controller.onTapNext(
                        context,
                        certificate: certificateType,
                      );
                    },
                    state.isInputted,
                    isLoading: state.isLoading,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sampleImage(WidgetRef ref, Certificate certificate) {
    final state = ref.watch(uploadCertificateProvider);
    if (state.imagePath.isNotEmpty) {
      return Image.file(File(state.imagePath));
    }

    switch (certificate) {
      case Certificate.driverLicense:
        return Assets.images.sampleDriver.image();
      case Certificate.passport:
        return Assets.images.samplePassport.image();
      case Certificate.insuranceCard:
        return Assets.images.sampleInsurance.image();
    }
  }

  Widget _warning(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.svgs.iconCaution.svg(height: 16),
                const SizedBox(width: 8),
                const Text(
                  '撮影時の注意点',
                  style: OshirucoTextStyles.mediumBold,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              '以下のような画像は審査対象外となります。注意して撮影ください。',
              style: OshirucoTextStyles.medium,
            ),
            _ngSamples(context),
          ],
        ),
      ),
    );
  }

  Widget _ngSamples(BuildContext context) {
    late Image image1;
    late Image image2;
    late Image image3;

    switch (certificate) {
      case Certificate.driverLicense:
        image1 = Assets.images.sampleDriverNg1.image();
        image2 = Assets.images.sampleDriverNg2.image();
        image3 = Assets.images.sampleDriverNg3.image();
        break;
      case Certificate.passport:
        image1 = Assets.images.samplePassportNg1.image();
        image2 = Assets.images.samplePassportNg2.image();
        image3 = Assets.images.samplePassportNg3.image();
        break;
      case Certificate.insuranceCard:
        image1 = Assets.images.sampleInsuranceNg1.image();
        image2 = Assets.images.sampleInsuranceNg2.image();
        image3 = Assets.images.sampleInsuranceNg3.image();
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: _ngSample(context, image1, '一部を隠している'),
            ),
            Expanded(
              child: _ngSample(context, image2, '画像が切れている'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        _ngSample(context, image3, '画質が不鮮明で読み取れない'),
      ],
    );
  }

  Widget _ngSample(BuildContext context, Image image, String text) {
    final width = MediaQuery.of(context).size.width * 0.4;

    return SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          image,
          SizedBox(
            width: width * 0.8,
            child: Text(
              text,
              style: OshirucoTextStyles.medium,
            ),
          ),
        ],
      ),
    );
  }
}
