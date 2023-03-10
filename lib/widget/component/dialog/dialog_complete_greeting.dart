import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

Future<void> showCompleteGreetingDialog(
  BuildContext context, {
  required User user,
}) {
  return showDialog<void>(
    context: context,
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        content: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 29),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                height: 390,
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.images.dialogHeaderToLiked.image(),
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
                      '${user.nickname}さんから「挨拶ありがとう」が返ってくると、おしるこ仲間になります。おしるこ仲間になるとメッセージのやりとりができます。',
                      style: OshirucoTextStyles.smallGrey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: RoundButton(
                      OshirucoColors.green,
                      'OK',
                      () => Navigator.of(context).pop(),
                      true,
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
