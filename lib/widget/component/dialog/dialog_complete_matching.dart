import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

Future<bool?> showCompleteMatchingDialog(
  BuildContext context, {
  required User user,
}) {
  return showDialog<bool?>(
    context: context,
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        content: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                height: 420,
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.images.dialogHeaderFriends.image(),
                  if (user.photoPaths.isNotEmpty)
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: OshirucoNetworkImage(
                        user.photoPaths,
                        type: OshirucoImageType.user,
                      ),
                    )
                  else
                    GenderExtension.fromString(user.gender)
                        .toImage()
                        .image(height: 70),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      user.nickname,
                      style: OshirucoTextStyles.smallGreyBold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      '${user.nickname}さんとおしるこ仲間になりました。メッセージのやりとりができます。',
                      style: OshirucoTextStyles.smallGrey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: RoundButton(
                      OshirucoColors.green,
                      'メッセージをおくる',
                      () => Navigator.of(context).pop(true),
                      true,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextButton(
                      child: const Text(
                        'あとにする',
                        style: OshirucoTextStyles.small,
                      ),
                      onPressed: () => Navigator.of(context).pop(false),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
