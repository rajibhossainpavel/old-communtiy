import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
    this.color,
    this.label,
    this.onTap,
    this.enable, {
    this.textStyle,
    this.side,
    Key? key,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final bool enable;
  final Color color;
  final TextStyle? textStyle;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        onPressed: enable ? onTap : null,
        child: Text(
          label,
          style: textStyle ?? OshirucoTextStyles.largeWhite,
        ),
        style: TextButton.styleFrom(
          backgroundColor: enable ? color : color.withOpacity(0.45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          side: side,
        ),
      ),
    );
  }
}

/// サイズが指定されていない RoundButton
/// ※ RoundButton は width に `double.infinity` が指定されており、使用できない場合があるので別 Widget として作成
class FlexibleRoundButton extends StatelessWidget {
  const FlexibleRoundButton({
    Key? key,
    required this.label,
    required this.onTap,
    required this.color,
    required this.textStyle,
    this.filled = false,
    this.borderColor,
  }) : super(key: key);

  final String label;
  final VoidCallback onTap;
  final Color color;
  final Color? borderColor;
  final bool filled;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text(
          label,
          style: textStyle,
        ),
      ),
      style: OutlinedButton.styleFrom(
        primary: color,
        backgroundColor: filled ? color : Colors.white,
        side: BorderSide(color: borderColor ?? color, width: 2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
        ),
      ),
    );
  }
}
