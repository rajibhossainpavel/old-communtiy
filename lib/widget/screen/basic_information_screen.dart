import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/enum/prefecture.dart';
import 'package:oshiruco_app/provider/basic_information_provider.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';

class BasicInformationScreen extends HookConsumerWidget {
  const BasicInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(basicInformationProvider);
    final controller = ref.watch(basicInformationProvider.notifier);
    return Scaffold(
      backgroundColor: OshirucoColors.background,
      appBar: oshirucoAppBar(title: '基本情報入力'),
      body: Column(
        children: [
          Assets.images.registerStep1.image(),
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 28),
                _description(),
                const SizedBox(height: 28),
                ..._basicInfo(context, ref),
                const SizedBox(height: 170),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 40),
                  child: GreenRoundButton(
                    '次へ',
                    () => controller.onTapNextButton(context),
                    state.isInputted && !state.isLoading,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _description() {
    return const Text(
      'まずは、基本情報を登録しましょう\n以下、必要情報を入力してください',
      textAlign: TextAlign.center,
      style: OshirucoTextStyles.medium,
    );
  }

  List<Widget> _basicInfo(BuildContext context, WidgetRef ref) {
    final state = ref.watch(basicInformationProvider);
    final controller = ref.watch(basicInformationProvider.notifier);

    final nickName = state.nickName;
    final gender = state.gender;
    final livePlace = state.livePlace;
    final birthPlace = state.birthPlace;

    return [
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Assets.icons.people.image(height: 28, width: 28),
            const SizedBox(width: 8),
            const Text(
              '基本情報',
              style: OshirucoTextStyles.mediumGreyBold,
            ),
          ],
        ),
      ),
      const SizedBox(height: 12),
      _inputCell(
        Assets.icons.peopleCircle.image(height: 28, width: 28),
        'ニックネーム',
        nickName.isEmpty ? 'おしるこちゃん' : nickName,
        () => controller.onTapNickName(context),
      ),
      const Divider(height: 1),
      _inputCell(
        Assets.icons.mail.image(height: 28, width: 28),
        'メールアドレス',
        state.mailAddress.isEmpty ? '選択してください' : state.mailAddress,
        () => controller.onTapMailAddress(context),
      ),
      const Divider(height: 1),
      _inputCell(
        Assets.icons.gender.image(height: 28, width: 28),
        '性別',
        gender == null ? '選択してください' : gender.toLabel(),
        () => controller.onTapGender(context),
      ),
      const Divider(height: 1),
      _inputCell(
        Assets.icons.house.image(height: 28, width: 28),
        '居住地',
        livePlace == null ? '選択してください' : livePlace.toLabel(),
        () => controller.onTapLivePlace(context),
      ),
      const Divider(height: 1),
      _inputCell(
        Assets.icons.location.image(height: 28, width: 28),
        '出身地',
        birthPlace == null ? '選択してください' : birthPlace.toLabel(),
        () => controller.onTapBirthPlace(context),
      ),
      const Divider(height: 1),
    ];
  }

  Widget _inputCell(
    Image icon,
    String title,
    String body,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                const SizedBox(width: 16),
                Text(
                  title,
                  style: OshirucoTextStyles.medium,
                ),
              ],
            ),
            Text(
              body,
              style: OshirucoTextStyles.smallGrey,
            ),
          ],
        ),
      ),
    );
  }
}
