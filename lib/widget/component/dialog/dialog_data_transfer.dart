import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/widget/component/green_outlined_button.dart';

Future<bool?> showDataTransferDialog({required BuildContext context}) {
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text(
          '機種変更に伴う\nデータ復元',
          style: OshirucoTextStyles.mediumBold,
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.svgs.imageTransfer.svg(height: 84),
            const SizedBox(height: 14),
            const Text(
              '別の端末を使って「おしるこ」でやりとりしていたメッセージやマイページの内容は、そのまま新しい機種へ移行できます。過去の端末で使っていたアドレスを選んでください。',
              style: OshirucoTextStyles.small,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: GreenOutlinedButton(
                onTap: () => Navigator.of(context).pop(true),
                label: 'データを引き継ぐ',
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              child: const Text(
                'キャンセルする',
                style: OshirucoTextStyles.smallGreen,
              ),
              onPressed: () => Navigator.of(context).pop(false),
            ),
          ],
        ),
      );
    },
  );
}
