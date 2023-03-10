import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/widget/component/badge.dart';

class GreenRoundButton extends StatelessWidget {
  const GreenRoundButton(
    this.label,
    this.onTap,
    this.enable, {
    this.unread = 0,
    this.isLoading = false,
    this.color = OshirucoColors.green,
    Key? key,
  }) : super(key: key);

  final String label;
  final VoidCallback onTap;
  final bool enable;
  final bool isLoading;
  final int unread;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        onPressed: (enable && !isLoading) ? onTap : null,
        child: isLoading
            ? const OshirucoCircleProgressIndicator()
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Spacer(),
                  Text(
                    label,
                    style: OshirucoTextStyles.largeWhite,
                  ),
                  Expanded(
                    child: unread > 0
                        ? Center(child: Badge(number: unread))
                        : Container(),
                  )
                ],
              ),
        style: TextButton.styleFrom(
          backgroundColor: enable ? color : color.withOpacity(0.45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
    );
  }
}
