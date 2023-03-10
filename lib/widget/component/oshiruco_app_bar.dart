import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

PreferredSizeWidget oshirucoAppBar({
  required String title,
  List<Widget>? actions,
  Widget? leading,
}) =>
    AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      title: Text(
        title,
        style: OshirucoTextStyles.largeWhite,
      ),
      leading: leading,
      actions: actions,
      centerTitle: true,
    );
