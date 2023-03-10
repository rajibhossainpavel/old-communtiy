import 'package:flutter/material.dart';

Future<List<String>?> showCheckboxDialog({
  required BuildContext context,
  required String title,
  required List<String> items,
  required List<String> selectedItems,
  int maxSelected = 0,
}) async {
  return showDialog<List<String>>(
    context: context,
    builder: (context) {
      return _CheckBoxDialogBody(
        title: title,
        items: items,
        selectedItems: selectedItems,
        maxSelected: maxSelected,
      );
    },
  );
}

class _CheckBoxDialogBody extends StatefulWidget {
  const _CheckBoxDialogBody({
    Key? key,
    required this.title,
    required this.items,
    required this.selectedItems,
    required this.maxSelected,
  }) : super(key: key);

  final String title;
  final List<String> items;
  final List<String> selectedItems;
  final int maxSelected;

  @override
  _CheckBoxDialogBodyState createState() => _CheckBoxDialogBodyState();
}

class _CheckBoxDialogBodyState extends State<_CheckBoxDialogBody> {
  @override
  void initState() {
    super.initState();
    selectedItems = widget.selectedItems;
  }

  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.title +
            (widget.maxSelected == 0 ? '' : '（最大${widget.maxSelected}つ）'),
      ),
      content: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListBody(
            children: widget.items.map(
              (item) {
                return CheckboxListTile(
                  title: Text(item),
                  value: selectedItems.contains(item),
                  onChanged: (isChecked) {
                    if (isChecked == null) {
                      return;
                    }
                    setState(
                      () {
                        if (isChecked) {
                          if (widget.maxSelected == 0) {
                            selectedItems.add(item);
                            return;
                          }

                          // 上限に達していなければ追加する
                          if (selectedItems.length < widget.maxSelected) {
                            selectedItems.add(item);
                          }
                        } else {
                          selectedItems.remove(item);
                        }

                        debugPrint(selectedItems.toString());
                      },
                    );
                  },
                );
              },
            ).toList(),
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
          onPressed: () {
            Navigator.of(context).pop(selectedItems);
          },
        ),
      ],
    );
  }
}
