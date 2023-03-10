import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    required this.onTap,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: SizedBox(
        height: 40,
        width: 40,
        child: isSelected
            ? Assets.icons.likeRed.image()
            : Assets.icons.likeWhite.image(
                color: OshirucoColors.textGrey,
              ),
      ),
    );
  }
}
