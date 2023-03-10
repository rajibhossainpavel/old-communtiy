import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/controller/edit_my_page_controller.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/provider/edit_my_page_controller_provider.dart';
import 'package:oshiruco_app/widget/component/image_carousel.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';

class PreviewMyPageScreen extends HookConsumerWidget {
  const PreviewMyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(editMyPageControllerProvider);
    final controller = ref.watch(editMyPageControllerProvider.notifier);

    final load = useMemoized(
      () => controller.loadInitialData(context),
    );
    final snapshot = useFuture(load);
    if (snapshot.error != null) {
      return const Text('error');
    }

    final user = state.user;

    return Scaffold(
      backgroundColor: OshirucoColors.background,
      appBar: oshirucoAppBar(title: user!.nickname),
      body: snapshot.connectionState == ConnectionState.waiting || user == null
          ? const Center(
              child: OshirucoCircleProgressIndicator(),
            )
          : ListView(
              children: [
                _profileImage(context, user, controller),
                const SizedBox(height: 28),
                _label(Assets.svgs.iconNickname, 'ニックネーム'),
                const SizedBox(height: 8),
                _textBox(
                  user.nickname,
                  // () => controller.nicknameOnTapped(context),
                  isBold: true,
                ),
                const SizedBox(height: 28),
                _label(Assets.svgs.iconTweet, 'つぶやき'),
                const SizedBox(height: 8),
                _textBox(
                  user.tweet,
                ),
                const SizedBox(height: 28),
                _label(Assets.svgs.iconIntro, '自己紹介'),
                const SizedBox(height: 8),
                _textBox(
                  user.introduction,
                ),
                const SizedBox(height: 28),
                _label(Assets.svgs.iconProfile, 'プロフィール'),
                const SizedBox(height: 8),
                _profileElement('おしるこ年齢', '${user.age.toOshirucoAge()}歳'),
                const OshirucoDivider(),
                _profileElement('性別', user.gender),
                const OshirucoDivider(),
                _profileElement(
                  '居住地',
                  user.livePlace,
                ),
                const OshirucoDivider(),
                _profileElement(
                  '出身地',
                  user.birthPlace,
                ),
                const OshirucoDivider(),
                _profileElement(
                  '血液型',
                  user.bloodType,
                ),
                const OshirucoDivider(),
                const SizedBox(height: 28),
                _label(Assets.svgs.iconProfileDetail, 'プロフィール詳細'),
                const SizedBox(height: 14),
                _subLabel('外見'),
                _profileElement(
                  '身長',
                  user.height > 0 ? '${user.height}cm' : '選択してください',
                ),
                const OshirucoDivider(),
                _profileElement(
                  '体型',
                  user.bodyType,
                ),
                const OshirucoDivider(),
                _profileElement(
                  'ヘアスタイル',
                  user.hair,
                ),
                _subLabel('性格'),
                _profileElement(
                  '性格',
                  user.personality,
                ),
                const OshirucoDivider(),
                _profileElement(
                  '社交性',
                  user.sociability,
                ),
                _subLabel('生活'),
                _profileElement(
                  '結婚',
                  user.marriage,
                ),
                const OshirucoDivider(),
                _profileElement(
                  '同居人',
                  user.housemate,
                ),
                const OshirucoDivider(),
                _profileElement(
                  '休日',
                  user.holiday,
                ),
                _subLabel('資産'),
                _profileElement(
                  '持ち家区分',
                  user.house,
                ),
                const OshirucoDivider(),
                _profileElement(
                  '保有資産',
                  user.asset,
                ),
                _subLabel('健康'),
                _profileElement(
                  '歩行速度',
                  user.walking,
                ),
                const OshirucoDivider(),
                _profileElement(
                  '持病',
                  user.sickness,
                ),
                _subLabel('その他'),
                _profileElement(
                  'お酒',
                  user.alcohol,
                ),
                const OshirucoDivider(),
                _profileElement(
                  'タバコ',
                  user.cigarettes,
                ),
                const OshirucoDivider(),
                _profileElement(
                  'かつて住んだところ',
                  user.livedPlace,
                ),
                const OshirucoDivider(),
                _profileElement(
                  '印象に残った旅先',
                  user.gonePlace,
                ),
                const OshirucoDivider(),
                _profileElement(
                  '兄弟姉妹',
                  user.broAndSis,
                ),
                const OshirucoDivider(),
                _profileElement(
                  '宗教',
                  user.religion,
                ),
                const SizedBox(height: 40),
              ],
            ),
    );
  }

  Widget _profileImage(
      BuildContext context, User user, EditMyPageController controller) {
    if (user.photoPaths.isEmpty) {
      debugPrint(user.gender);
      return Stack(
        alignment: Alignment.bottomCenter,
        children: [
          if (user.gender == '男性')
            Assets.images.userMan.image()
          else
            Assets.images.userWoman.image(),
        ],
      );
    }

    final page = useState<int>(0);
    return GestureDetector(
      onTap: () {
        controller.profileImageOnTapped(context, page.value);
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ImageCarousel(
            user.photoPaths.splitPath(),
            page: page,
          ),
          if (user.photoPaths.splitPath().length > 1)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImageCarouselPosition(
                  user.photoPaths.splitPath().length,
                  position: page.value,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _textBox(String text, {bool isBold = false}) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        color: Colors.white,
        child: text.isEmpty
            ? const Text(
                '入力してください',
                style: OshirucoTextStyles.largeGrey,
              )
            : Text(
                text,
                style: isBold
                    ? OshirucoTextStyles.largeBold
                    : OshirucoTextStyles.medium,
              ),
      ),
    );
  }

  Widget _subLabel(String subTitle) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      color: Colors.black12,
      child: Text(
        subTitle,
        style: OshirucoTextStyles.medium,
      ),
    );
  }

  Widget _profileElement(
    String title,
    String body,
  ) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: OshirucoTextStyles.medium,
            ),
            const SizedBox(width: 20),
            Flexible(
              child: Text(
                body.isNotEmpty ? body : '',
                style: OshirucoTextStyles.medium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _label(SvgGenImage image, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image.svg(height: 24),
          const SizedBox(width: 8),
          Text(
            title,
            style: OshirucoTextStyles.medium,
          ),
        ],
      ),
    );
  }
}
