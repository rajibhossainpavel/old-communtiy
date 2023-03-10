import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';

Future<bool?> showCheckImageDeletion(
  BuildContext context, {
  required String networkImagePath,
}) async {
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text(
          '削除しますか?',
          style: OshirucoTextStyles.large,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        content: OshirucoNetworkImage(
          networkImagePath,
          type: OshirucoImageType.selfHistory,
          fit: BoxFit.cover,
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'キャンセル',
              style: OshirucoTextStyles.smallGreen,
            ),
            onPressed: () => Navigator.of(context).pop(false),
          ),
          TextButton(
            child: const Text(
              'OK',
              style: OshirucoTextStyles.smallGreen,
            ),
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ],
      );
    },
  );
}
