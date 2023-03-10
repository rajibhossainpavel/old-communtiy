import 'package:flutter/material.dart';

import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/screen/web_view_screen.dart';

import 'package:oshiruco_app/model/remote_config/banner/banner.dart'
    as rc_banner;

class BannerView extends StatelessWidget {
  const BannerView({
    required this.banner,
    Key? key,
  }) : super(key: key);

  final rc_banner.Banner? banner;

  @override
  Widget build(BuildContext context) {
    final banner = this.banner;
    if (banner == null) {
      return const SizedBox();
    }

    return GestureDetector(
      onTap: () {
        routemaster.push(
          '/diary/banner',
          queryParameters: {
            WebViewScreen.paramKeyTitle: banner.title,
            WebViewScreen.paramKeyUrl: banner.url,
          },
        );
      },
      child: Image.network(
        banner.img.toImageUrl(),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
