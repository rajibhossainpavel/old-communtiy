import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';

class CaptionEditingScreen extends HookWidget {
  const CaptionEditingScreen({
    String initialValue = '',
    bool isEditable = true,
    Key? key,
  })  : _initialValue = initialValue,
        _isEditable = isEditable,
        super(key: key);

  final String _initialValue;

  final bool _isEditable;

  /// keys for query parameter
  static const initialValueKey = 'initialValue';
  static const isEditableKey = 'isEditable';

  @override
  Widget build(BuildContext context) {
    final inputText = useState(_initialValue);
    return Scaffold(
      appBar: oshirucoAppBar(title: 'キャプションを編集'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: inputText.value,
                enabled: _isEditable,
                decoration: const InputDecoration(
                  labelText: 'キャプションを入力',
                  labelStyle: OshirucoTextStyles.smallDarkGreen,
                  errorStyle: TextStyle(color: Colors.red),
                  contentPadding: EdgeInsets.all(8),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: OshirucoColors.darkGreen,
                      width: 2.0,
                    ),
                  ),
                ),
                maxLength: 25,
                minLines: 1,
                maxLines: 1,
                keyboardType: TextInputType.multiline,
                onChanged: (val) => inputText.value = val,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return '25文字以内で入力してください';
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          if (_isEditable)
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                color: OshirucoColors.green,
                child: const Text(
                  'キャプションを保存',
                  style: OshirucoTextStyles.mediumWhiteBold,
                ),
              ),
              onTap: () => {
                if (inputText.value.isNotEmpty)
                  {
                    Navigator.of(context).pop(inputText.value),
                  }
              },
            ),
        ],
      ),
    );
  }
}
