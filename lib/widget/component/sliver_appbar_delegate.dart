import 'package:flutter/material.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  SliverAppBarDelegate(this._tabBar, {this.valueForRebuild});

  final TabBar _tabBar;

  /// rebuild を走らせるための値
  /// 値が変わると shouldRebuild で true が返り、rebuild される
  final dynamic valueForRebuild;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 56,
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return valueForRebuild != oldDelegate.valueForRebuild;
  }
}
