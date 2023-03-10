import 'package:flutter/material.dart';

Future<void> showMessageSnackBar(
  BuildContext context, {
  required String message,
}) async {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
      ),
    ),
  );
}
