import 'package:flutter/material.dart';

Future<void> dialogPointShortage(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('確認'),
        content: const Text('ポイントが不足しています'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('閉じる'),
          ),
        ],
      );
    },
  );
}
