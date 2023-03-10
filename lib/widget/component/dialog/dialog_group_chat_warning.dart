import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';

Future<bool?> showGroupChatWarningDialog(BuildContext context) async {
  return showDialog<bool?>(
    context: context,
    builder: (context) => AlertDialog(
      titlePadding: const EdgeInsets.only(top: 30),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.svgs.iconCaution.svg(width: 31, height: 27),
          const SizedBox(width: 5),
          const Text(
            'グループ利用時の注意',
            style: OshirucoTextStyles.mediumBold,
          )
        ],
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.badman.image(
              width: 112,
              height: 112,
            ),
            const SizedBox(
              height: 28,
            ),
            const Text(
              'グループチャットは不特定多数が閲覧できる場です。トラブルへ巻き込まれないためにも、LINEのIDや電話番号などの個人情報を投稿しないようにしてください。詳細は利用規約をご覧ください。',
              style: OshirucoTextStyles.mediumBold,
            ),
          ],
        ),
      ),
      actionsPadding: const EdgeInsets.only(bottom: 28),
      actions: [
        GreenRoundButton(
          '閉じる',
          () => Navigator.of(context).pop(true),
          true,
        ),
      ],
    ),
  );
}
