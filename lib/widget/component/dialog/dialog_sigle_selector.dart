import 'package:flutter/material.dart';

Future<String?> showSingleSelectorDialog({
  required BuildContext context,
  String? title,
  required List<String> items,
  double fontSize = 17,
}) {
  return showDialog<String?>(
    context: context,
    builder: (context) {
      final list = items
          .map((item) => SimpleDialogOption(
                child: Text(item, style: TextStyle(fontSize: fontSize)),
                onPressed: () {
                  Navigator.of(context).pop(item);
                },
              ))
          .toList();

      return SimpleDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        title: title == null ? null : Text(title),
        children: list,
      );
    },
  );
}
