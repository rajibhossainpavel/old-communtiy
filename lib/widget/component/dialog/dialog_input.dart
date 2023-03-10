import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';

Future<String?> showInputDialog({
  required BuildContext context,
  required String title,
  String text = '',
  String hint = '',
  required int maxLength,
  int maxLines = 1,
}) async {
  final controller = TextEditingController()..text = text;

  return showDialog<String>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        content: TextField(
          autofocus: true,
          controller: controller,
          maxLength: maxLength,
          minLines: 1,
          maxLines: maxLines,
          enableInteractiveSelection: true,
          decoration: InputDecoration(
            hintText: hint,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: OshirucoColors.green, width: 1.0),
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('キャンセル'),
            onPressed: () => Navigator.of(context).pop(null),
          ),
          TextButton(
            child: const Text('OK'),
            onPressed: () => Navigator.of(context).pop(controller.text.trim()),
          ),
        ],
      );
    },
  );
}
