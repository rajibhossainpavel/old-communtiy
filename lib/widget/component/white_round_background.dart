import 'package:flutter/material.dart';

class RoundBackGround extends StatelessWidget {
  const RoundBackGround({required this.child, Key? key}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
