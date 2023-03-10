import 'package:flutter/widgets.dart';

import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';

class UserIcon extends StatelessWidget {
  const UserIcon(this.paths, this.gender, {Key? key}) : super(key: key);

  final String paths;
  final String gender;

  @override
  Widget build(BuildContext context) {
    final defaultImage = EmptyImageUserMin(gender);

    final path = paths.split(':')[0];
    if (path.isEmpty) {
      return Container(child: defaultImage);
    }

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      child: path == ''
          ? Container(child: defaultImage)
          : OshirucoNetworkImage(path, type: OshirucoImageType.user),
    );
  }
}

class EmptyImageUserMin extends StatelessWidget {
  const EmptyImageUserMin(this.gender, {Key? key}) : super(key: key);

  final String gender;

  @override
  Widget build(BuildContext context) {
    switch (gender) {
      case '男性':
        return Assets.images.userManMin.image();
      case '女性':
        return Assets.images.userWomanMin.image();
      default:
        return Assets.images.userOtherMin.image();
    }
  }
}
