import 'package:flutter/material.dart';

import 'package:oshiruco_app/gen/assets.gen.dart';

class BubbleContainer extends StatelessWidget {
  const BubbleContainer(this.text, {Key? key}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: Assets.images.baloonNormal9),
      ),
      child: Container(
        height: 56,
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
