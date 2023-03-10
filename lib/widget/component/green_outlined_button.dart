import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

class GreenOutlinedButton extends StatelessWidget {
  const GreenOutlinedButton({
    required this.onTap,
    required this.label,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text(
          label,
          style: OshirucoTextStyles.mediumGreenLightBold,
        ),
      ),
      style: OutlinedButton.styleFrom(
        primary: OshirucoColors.green,
        backgroundColor: Colors.white,
        side: const BorderSide(color: OshirucoColors.green, width: 2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
      ),
    );
  }
}
