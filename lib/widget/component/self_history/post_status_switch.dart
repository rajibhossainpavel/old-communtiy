import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

class PostStatusSwitch extends HookWidget {
  const PostStatusSwitch({
    required Function(bool) onUpdate,
    bool initialValue = false,
    bool isScript = true,
    bool isActive = true,
    Key? key,
  })  : _initialValue = initialValue,
        _isScript = isScript,
        _isActive = isActive,
        _onUpdate = onUpdate,
        super(key: key);

  final bool _initialValue;

  /// 原稿 or 写真
  final bool _isScript;

  /// ステータスを変更可能か否か
  final bool _isActive;

  final Function(bool) _onUpdate;

  @override
  Widget build(BuildContext context) {
    final switchStatus = useState(_initialValue);
    final target = _isScript ? '原稿' : '写真';
    return DefaultTextStyle(
      style:
          _isActive ? OshirucoTextStyles.small : OshirucoTextStyles.smallGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '$targetの状態',
            ),
            const SizedBox(width: 12),
            const Text(
              '途中',
            ),
            if (_isActive)
              Switch(
                value: switchStatus.value,
                onChanged: (newValue) {
                  _onUpdate(newValue);
                  switchStatus.value = newValue;
                },
                activeColor: OshirucoColors.green,
                inactiveThumbColor: OshirucoColors.gbGrey,
                inactiveTrackColor: OshirucoColors.textGrey,
              )
            else
              Switch(
                value: false,
                onChanged: (_) => <void>{},
                inactiveThumbColor: Colors.transparent.withOpacity(0.1),
                inactiveTrackColor: OshirucoColors.textGrey.withOpacity(0.1),
              ),
            const Text(
              '完成',
            ),
          ],
        ),
      ),
    );
  }
}
