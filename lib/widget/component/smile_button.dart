import 'package:flutter/material.dart';

import 'package:oshiruco_app/gen/assets.gen.dart';

class SmileButton extends StatelessWidget {
  const SmileButton({
    VoidCallback? onTap,
    required bool isSmiled,
    required int smiledNumber,
    Key? key,
  })  : _onTap = onTap,
        _isSmiled = isSmiled,
        _smiledNumber = smiledNumber,
        super(key: key);

  /// ボタンを押した時の挙動
  final VoidCallback? _onTap;

  /// 選択済みか否か
  final bool _isSmiled;

  /// スマイルした人数
  final int _smiledNumber;

  AssetGenImage smileIcon(bool isSmiled) =>
      !isSmiled ? Assets.icons.smileGrey : Assets.icons.smileRed;

  Text smileText(bool isSmiled) => !isSmiled
      ? const Text(
          'スマイル済み',
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      : const Text(
          'スマイルする',
          style: TextStyle(
            color: Colors.red,
          ),
        );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Row(
        children: [
          smileIcon(_isSmiled).image(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: smileText(_isSmiled),
          ),
          const SizedBox(width: 4),
          Text(
            '$_smiledNumber人',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
