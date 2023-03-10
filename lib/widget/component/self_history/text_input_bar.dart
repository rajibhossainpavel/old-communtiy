import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

class TextInputBar extends StatelessWidget {
  const TextInputBar({
    required bool enable,
    required String hintText,
    String contents = '',
    VoidCallback? onTap,
    Key? key,
  })  : _enable = enable,
        _hintText = hintText,
        _contents = contents,
        _onTap = onTap,
        super(key: key);

  const TextInputBar.fromCaption({
    required bool enable,
    String contents = '',
    String? hintText,
    VoidCallback? onTap,
    Key? key,
  }) : this(
          enable: enable,
          hintText: hintText ?? (enable ? 'キャプションを入力' : '写真を選んだらキャプションが入力できます'),
          contents: contents,
          onTap: onTap,
          key: key,
        );

  /// 入力可能 or not
  final bool _enable;

  final String _contents;

  final String _hintText;

  final VoidCallback? _onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _enable ? _onTap : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              _contents.isEmpty ? _hintText : _contents,
              style: _contents.isEmpty
                  ? OshirucoTextStyles.smallGrey
                  : OshirucoTextStyles.small,
            ),
          ),
          if (_enable)
            const Icon(
              Icons.keyboard_arrow_right,
              color: OshirucoColors.textGrey,
              size: 20,
            ),
        ],
      ),
    );
  }
}
