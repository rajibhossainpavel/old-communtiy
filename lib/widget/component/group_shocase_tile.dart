import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/group/group.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';
import 'package:oshiruco_app/widget/screen/group_detail_screen.dart';

class GroupShowcaseTile extends StatelessWidget {
  const GroupShowcaseTile(
    this.group, {
    Key? key,
  }) : super(key: key);

  final Group group;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        // 無限ループができてしまう為、絶対パスを使用する
        // 無限ループをするにはroutemasterの使用をやめる必要がある
        routemaster.push(
          '/groups/detail/${group.id}',
          queryParameters: {GroupDetailScreen.isOwnerKey: 'false'},
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Stack(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: OshirucoNetworkImage(
                      group.icon,
                      type: OshirucoImageType.group,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                group.name,
                style: OshirucoTextStyles.mediumGreyBold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.people,
                    size: 20,
                    color: OshirucoColors.textGrey,
                  ),
                  Text(
                    '${group.userCount}人',
                    style: OshirucoTextStyles.smallGreyBold,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
