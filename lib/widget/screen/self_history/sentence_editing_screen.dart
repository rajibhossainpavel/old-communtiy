import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';

class SentenceEditingScreen extends HookWidget {
  const SentenceEditingScreen({
    String initialValue = '',
    bool isEditable = true,
    required String title,
    Key? key,
  })  : _title = title,
        _isEditable = isEditable,
        _initialValue = initialValue,
        super(key: key);

  final bool _isEditable;

  final String _title;

  final String _initialValue;

  @override
  Widget build(BuildContext context) {
    final inputText = useState(_initialValue);
    return Scaffold(
      appBar: oshirucoAppBar(
        title: _title,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: TextFormField(
                  enabled: _isEditable,
                  initialValue: inputText.value,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    border: InputBorder.none,
                    hintText: '入力してください',
                  ),
                  maxLength: 500,
                  minLines: 1,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  onChanged: (val) => inputText.value = val.trim(),
                ),
              ),
            ),
            if (_isEditable)
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  alignment: Alignment.center,
                  color: OshirucoColors.green,
                  child: Text(
                    '$_titleを下書き保存する',
                    style: OshirucoTextStyles.mediumWhiteBold,
                  ),
                ),
                onTap: () => Navigator.of(context).pop(inputText.value.trim()),
              ),
          ],
        ),
      ),
    );
  }
}
