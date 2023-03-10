import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/group_category/group_category.dart';

Future<GroupCategory?> showSelectedGroupCategoryDialog(
  BuildContext context, {
  required List<GroupCategory> categories,
}) async {
  return showDialog<GroupCategory>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text(
        'カテゴリ',
        style: OshirucoTextStyles.largeGreyBold,
      ),
      contentPadding: EdgeInsets.zero,
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: categories
              .map(
                (category) => ListTile(
                  title: Text(category.name),
                  onTap: () => Navigator.pop<GroupCategory>(context, category),
                ),
              )
              .toList(),
        ),
      ),
    ),
  );
}
