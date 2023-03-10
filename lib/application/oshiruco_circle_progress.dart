import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';

class OshirucoCircleProgressIndicator extends StatelessWidget {
  const OshirucoCircleProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(OshirucoColors.green),
    );
  }
}
