import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

class NewMessageBar extends StatelessWidget {
  const NewMessageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 14),
      child: Container(
        height: 24,
        padding: const EdgeInsets.symmetric(vertical: 2),
        width: double.infinity,
        alignment: Alignment.center,
        child: const Text(
          'ここから新着メッセージ',
          style: OshirucoTextStyles.smallGrey,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: OshirucoColors.bgGreyDark,
        ),
      ),
    );
  }
}
