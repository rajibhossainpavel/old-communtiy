import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';

class OshirucoDivider extends StatelessWidget {
  const OshirucoDivider({double? thickness, double height = 1.0, Key? key})
      : _height = height,
        _thickness = thickness,
        super(key: key);

  final double _height;

  final double? _thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: _thickness,
      color: OshirucoColors.divider,
      height: _height,
    );
  }
}
