import 'package:flutter/material.dart';

Future<bool?> showPointExchangeConfirmDialog(BuildContext context,
    {required int points, required int greetings}) async {
  return showDialog<bool?>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('挨拶交換'),
        content: Text('$pointsポイントを$greetings挨拶に交換する'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('キャンセルする'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('交換する'),
          ),
        ],
      );
    },
  );
}
