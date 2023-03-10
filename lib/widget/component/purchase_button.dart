import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

class PurchaseButton extends StatelessWidget {
  const PurchaseButton({
    VoidCallback? onTap,
    bool isActive = true,
    Key? key,
  })  : _onTap = onTap,
        _isActive = isActive,
        super(key: key);

  final VoidCallback? _onTap;

  final bool _isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _isActive ? _onTap : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: _isActive ? OshirucoColors.red : OshirucoColors.gbGrey,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(_isActive ? '購入する' : '購入済み',
            style: OshirucoTextStyles.smallWhiteBold),
      ),
    );
  }
}
