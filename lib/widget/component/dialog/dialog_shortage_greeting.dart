import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';

Future<bool?> showShortageGreetingDialog(BuildContext context, String message) {
  return showDialog<bool?>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text(
        '挨拶数が不足しています',
        style: TextStyle(
          color: OshirucoColors.text,
          fontWeight: FontWeight.w500,
        ),
      ),
      content: Text(message),
      titleTextStyle:
          const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            'キャンセル',
          ),
          onPressed: () {
            return Navigator.of(context).pop(false);
          },
        ),
        TextButton(
          child: const Text(
            '確認する',
          ),
          onPressed: () {
            return Navigator.of(context).pop(true);
          },
        ),
      ],
    ),
  );
}
