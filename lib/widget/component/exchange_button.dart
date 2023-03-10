import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

class ExchangeButton extends StatelessWidget {
  const ExchangeButton(this.onTap, {Key? key}) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: OshirucoColors.red,
          borderRadius: BorderRadius.circular(24),
        ),
        child: const Text(
          '交換',
          style: OshirucoTextStyles.smallWhiteBold,
        ),
      ),
    );
  }
}
