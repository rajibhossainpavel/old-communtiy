import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({required this.onTap, required this.title, Key? key})
      : super(key: key);

  final String title;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Text(
        title,
        style: OshirucoTextStyles.mediumGrey,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: OshirucoColors.grey,
      ),
    );
  }
}
