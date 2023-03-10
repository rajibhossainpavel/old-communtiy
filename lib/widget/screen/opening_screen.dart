import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.7;
    return Scaffold(
      backgroundColor: OshirucoColors.green,
      body: Center(
          child: Assets.images.logo.image(
        height: size,
        width: size,
      )),
    );
  }
}
