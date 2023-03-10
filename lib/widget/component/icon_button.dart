import 'package:flutter/material.dart';

class OshirucoIconButton extends StatelessWidget {
  const OshirucoIconButton({
    required this.onTap,
    required this.icon,
    this.color,
    this.size = 40,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;

  final Widget icon;

  final double size;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: icon,
      ),
    );
  }
}
