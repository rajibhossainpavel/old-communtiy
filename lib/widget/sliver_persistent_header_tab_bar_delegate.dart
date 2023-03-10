// https://medium.com/@diegoveloper/flutter-collapsing-toolbar-sliver-app-bar-14b858e87abe

import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';

class SliverPersistentHeaderTabBarDelegate
    extends SliverPersistentHeaderDelegate {
  SliverPersistentHeaderTabBarDelegate(
      {required this.tabBar, this.color = Colors.white});

  final TabBar tabBar;
  final Color color;

  @override
  double get minExtent => tabBar.preferredSize.height;
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              color: color,
              child: tabBar,
            ),
          ],
        ),
        const Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Divider(
            height: 1.0,
            color: OshirucoColors.grey,
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderTabBarDelegate oldDelegate) {
    return true;
  }
}
