import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/controller/dynamic_link_controller.dart';
import 'package:oshiruco_app/controller/edit_my_page_controller.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/application_initialize_provider.dart';
import 'package:oshiruco_app/provider/edit_my_page_controller_provider.dart';
import 'package:oshiruco_app/provider/my_page_controller_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/image_carousel.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';

class EditMyPageScreen extends HookConsumerWidget {
  const EditMyPageScreen({
    bool isIncludeAppBar = true,
    Key? key,
  })  : _isIncludeAppBar = isIncludeAppBar,
        super(key: key);
  final bool _isIncludeAppBar;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!_isIncludeAppBar) {
      return _body(context, ref);
    }
    return Scaffold(
      backgroundColor: OshirucoColors.background,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'プロフィールを編集',
          style: OshirucoTextStyles.largeWhite,
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 90,
                decoration: const BoxDecoration(
                  color: OshirucoColors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () => routemaster.push('/my_page/edit/preview'),
                    child: const Text(
                      'プレビュー',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: _body(context, ref),
      ),
    );
  }

  Widget _body(BuildContext context, WidgetRef ref) {
    final state = ref.watch(editMyPageControllerProvider);
    final user = state.user;
    final controller = ref.watch(editMyPageControllerProvider.notifier);
    final myPageController = ref.watch(myPageControllerProvider.notifier);
    final appController = ref.watch(appProvider.notifier);
    final fcmController = ref.watch(fcmTokenProvider);

    final load = useMemoized(
      () => controller.loadInitialData(context),
    );
    final snapshot = useFuture(load);
    if (snapshot.error != null) {
      return const Text('error');
    }

    return Stack(
      alignment: Alignment.topLeft,
      children: [
        if (snapshot.connectionState == ConnectionState.waiting || user == null)
          const Center(
            child: OshirucoCircleProgressIndicator(),
          )
        else
          ListView(
            children: [
              _profileImage(context, user, controller),
              const SizedBox(height: 28),
              _label(Assets.svgs.iconNickname, 'ニックネーム'),
              const SizedBox(height: 8),
              _textBox(
                user.nickname,
                () => controller.nicknameOnTapped(context),
                isBold: true,
              ),
              const SizedBox(height: 28),
              _label(Assets.svgs.iconTweet, 'つぶやき'),
              const SizedBox(height: 8),
              _textBox(
                user.tweet,
                () => controller.tweetOnTapped(context),
              ),
              const SizedBox(height: 28),
              _label(Assets.svgs.iconIntro, '自己紹介'),
              const SizedBox(height: 8),
              _textBox(
                user.introduction,
                () => controller.selfIntroductionOnTapped(context),
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
                onTap: () => controller.livePlaceTypeOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                '出身地',
                user.birthPlace,
                onTap: () => controller.birthPlaceTypeOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement('血液型', user.bloodType, onTap: () {
                controller.bloodTypeOnTapped(context);
              }),
              const OshirucoDivider(),
              const SizedBox(height: 28),
              _label(Assets.svgs.iconProfileDetail, 'プロフィール詳細'),
              const SizedBox(height: 14),
              _subLabel('外見'),
              _profileElement(
                '身長',
                user.height > 0 ? '${user.height}cm' : '選択してください',
                onTap: () => controller.heightOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                '体型',
                user.bodyType,
                onTap: () => controller.bodyTypeOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                'ヘアスタイル',
                user.hair,
                onTap: () => controller.hairOnTapped(context),
              ),
              _subLabel('性格'),
              _profileElement(
                '性格',
                user.personality,
                onTap: () => controller.personalityOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                '社交性',
                user.sociability,
                onTap: () => controller.sociabilityOnTapped(context),
              ),
              _subLabel('生活'),
              _profileElement(
                '結婚',
                user.marriage,
                onTap: () => controller.marriageOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                '同居人',
                user.housemate,
                onTap: () => controller.housemateOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                '休日',
                user.holiday,
                onTap: () => controller.holidayOnTapped(context),
              ),
              _subLabel('資産'),
              _profileElement(
                '持ち家区分',
                user.house,
                onTap: () => controller.houseOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                '保有資産',
                user.asset,
                onTap: () => controller.assetOnTapped(context),
              ),
              _subLabel('健康'),
              _profileElement(
                '歩行速度',
                user.walking,
                onTap: () => controller.walkingOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                '持病',
                user.sickness,
                onTap: () => controller.sicknessOnTapped(context),
              ),
              _subLabel('その他'),
              _profileElement(
                'お酒',
                user.alcohol,
                onTap: () => controller.alcoholOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                'タバコ',
                user.cigarettes,
                onTap: () => controller.cigarettesOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                'かつて住んだところ',
                user.livedPlace,
                onTap: () => controller.livedPlaceOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                '印象に残った旅先',
                user.gonePlace,
                onTap: () => controller.gonePlaceOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                '兄弟姉妹',
                user.broAndSis,
                onTap: () => controller.broAndSisOnTapped(context),
              ),
              const OshirucoDivider(),
              _profileElement(
                '宗教',
                user.religion,
                onTap: () => controller.religionOnTapped(context),
              ),
              const SizedBox(height: 40),
              TextButton(
                child: const Text(
                  '以前利用していた端末のデータを復元する',
                  style: OshirucoTextStyles.mediumGreenBold,
                ),
                onPressed: () async {
                  if (Platform.isAndroid) {
                    final result =
                        await controller.restoreAccountOnTapped(context);

                    if (result.isRestore) {
                      await appController.updateAppData(
                        uuid: result.user!.uuid,
                        uid: result.user!.userID,
                        token: result.token,
                      );

                      await fcmController.registerFcmToken();
                      myPageController.updateUser(result.user!);
                    }
                  } else {
                    String dynamicLink =
                        await DynamicLinkController.generateDynamicLink(
                            user.account);

                    showCustomPopUpDialog(context, [
                      const Text(
                        '生成されたダイナミックリンクをコピーして、新しいiPhoneに送信してください。新しいiPhoneにおしるこアプリがインストールされていること、新規登録が完了していることを確認してください。',
                        style: OshirucoTextStyles.medium,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(dynamicLink,
                                style: OshirucoTextStyles.smallGreen),
                          ),
                          IconButton(
                            onPressed: () {
                              Clipboard.setData(
                                  ClipboardData(text: dynamicLink));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('コピーされたダイナミック リンク'),
                                duration: Duration(milliseconds: 1500),
                              ));
                            },
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                    ]);
                    Clipboard.setData(ClipboardData(text: dynamicLink));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('コピーされたダイナミック リンク'),
                      duration: Duration(milliseconds: 2000),
                    ));
                  }
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        if (!_isIncludeAppBar)
          Positioned(
            top: 8,
            left: 8,
            child: IconButton(
              iconSize: 48,
              onPressed: Navigator.of(context).pop,
              icon: Assets.svgs.iconArrowBackCircle.svg(),
            ),
          ),
      ],
    );
  }

  Widget _profileImage(
      BuildContext context, User user, EditMyPageController controller) {
    if (user.photoPaths.isEmpty) {
      return Stack(
        alignment: Alignment.bottomCenter,
        children: [
          if (user.gender == '男性')
            Assets.images.userMan.image()
          else
            Assets.images.userWoman.image(),
          GestureDetector(
            onTap: () {
              controller.uploadProfileImageOnTapped(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: OshirucoColors.green, width: 2),
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white),
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: const Text(
                '写真を登録する',
                style: OshirucoTextStyles.mediumGreenBold,
              ),
            ),
          ),
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

  Widget _textBox(String text, VoidCallback onTap, {bool isBold = false}) {
    return GestureDetector(
      onTap: onTap,
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

  Widget _profileElement(String title, String body, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
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
                body.isNotEmpty ? body : '選択してください',
                style: onTap == null
                    ? OshirucoTextStyles.medium
                    : OshirucoTextStyles.mediumGreen,
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
