import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer({
    required this.icon,
    required this.title,
    required this.body,
    this.tail,
    Key? key,
  }) : super(key: key);

  final AssetGenImage icon;
  final String title;
  final Widget body;
  final Widget? tail;

  @override
  Widget build(BuildContext context) {
    final tailWidget = tail;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon.image(
                width: 24,
                height: 18,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: OshirucoColors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: OshirucoTextSize.small,
                ),
              ),
              const Spacer(),
              if (tailWidget != null) tailWidget,
            ],
          ),
        ),
        body,
      ],
    );
  }
}
