import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_picker/Picker.dart';
import 'package:flutter_picker/flutter_picker.dart';

Future<String> showPickerDialog({
  required BuildContext context,
  required String title,
  required List<String> items,
  int selected = 0,
}) async {
  final picker = Picker(
    adapter: PickerDataAdapter<String>(pickerdata: items, isArray: false),
    hideHeader: true,
    title: const Text('Please Select'),
    onConfirm: (Picker picker, List value) {
      debugPrint(picker.getSelectedValues().toString());
    },
    selecteds: [selected],
  );

  await picker.showDialog(context);
  return picker.getSelectedValues().first.toString();
}
