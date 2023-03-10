import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

Future<String?> showGreetingDialog(
  BuildContext context, {
  required User user,
}) {
  final width = MediaQuery.of(context).size.width;
  final controller = TextEditingController();
  return showDialog<String?>(
    context: context,
    builder: (context) {
      var greetingConsumption = 1;
      return StatefulBuilder(builder: (context, setState) {
        return AlertDialog(
          clipBehavior: Clip.hardEdge,
          contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
          actionsPadding: EdgeInsets.zero,
          titlePadding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Container(
                  height: 70,
                  width: 70,
                  color: const Color(0xFFCCCCCC),
                  child: user.photoPaths.isEmpty
                      ? OshirucoNetworkImage(
                          user.photoPaths,
                          type: OshirucoImageType.user,
                        )
                      : GenderExtension.fromString(user.gender)
                          .toImage()
                          .image(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: width - 240,
                  child: Text(
                    '${user.nickname}さんに挨拶しますか',
                    style: OshirucoTextStyles.medium,
                  ),
                ),
              ),
            ],
          ),
          content: SizedBox(
            height: 250,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: controller,
                  maxLength: 30,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'メッセージも送りましょう',
                  ),
                  onChanged: (text) {
                    setState(() {
                      greetingConsumption = text.isEmpty ? 1 : 3;
                    });
                  },
                ),
                const Spacer(),
                Text(
                  '挨拶を送ると$greetingConsumption挨拶を消費します',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: OshirucoColors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: RoundButton(
                    OshirucoColors.red,
                    '挨拶を送る',
                    () => {
                      Navigator.of(context).pop(controller.text),
                    },
                    true,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Text(
                    'キャンセル',
                    style: OshirucoTextStyles.mediumGrey,
                  ),
                ),
              ],
            ),
          ),
        );
      });
    },
  );
}
