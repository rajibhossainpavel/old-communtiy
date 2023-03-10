import 'package:flutter/material.dart';

import 'package:oshiruco_app/widget/component/banner_view.dart';

import 'package:oshiruco_app/model/remote_config/banner/banner.dart'
    as rc_banner;

class ContentsAppBar extends StatelessWidget {
  const ContentsAppBar({
    required this.title,
    required this.header,
    required this.isScrolled,
    Key? key,
    this.banner,
  }) : super(key: key);

  final String title;
  final Widget header;
  final bool isScrolled;
  final rc_banner.Banner? banner;

  double get _headerAspectRatio => 216 / 720;

  double get _bannerAspectRatio => 360 / 1440;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final headerImageHeight = width * _headerAspectRatio;
    final bannerHeight = banner != null ? width * _bannerAspectRatio : 0;

    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverAppBar(
        // 微妙にはみ出してしまうため1px加える
        expandedHeight: headerImageHeight + bannerHeight + 1,
        pinned: false,
        centerTitle: true,
        elevation: 0,
        forceElevated: isScrolled,
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          background: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              header,
              BannerView(banner: banner),
            ],
          ),
        ),
      ),
    );
  }
}
