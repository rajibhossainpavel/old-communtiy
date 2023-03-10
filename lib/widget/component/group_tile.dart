import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/group/group.dart';
import 'package:oshiruco_app/model/group_user/group_user.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/badge.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';
import 'package:oshiruco_app/widget/screen/group_detail_screen.dart';

class GroupTile extends StatelessWidget {
  const GroupTile(
      {required this.src,
      required this.title,
      required this.subTitle,
      required this.onTap,
      this.errorWidget,
      this.isShowOfficial = false,
      this.isShowAdmin = false,
      this.unread = 0,
      Key? key})
      : super(key: key);

  GroupTile.fromUser(
    GroupUser user, {
    bool isOwn = false,
    Key? key,
  }) : this(
          key: key,
          src: user.photoPaths.splitPath().isNotEmpty
              ? 'user/${user.photoPaths.splitPath()[0]}'
              : '',
          onTap: () => isOwn
              ? routemaster.push('edit_my_page')
              : routemaster.push('friends/${user.uuid}'),
          title: user.nickname,
          errorWidget: GenderExtension.fromString(user.gender).toImage().image(
                fit: BoxFit.cover,
              ),
          subTitle:
              '${user.age.toOshirucoAge()}歳 ${user.gender} ${user.livePlace}',
          isShowAdmin: user.isOwner,
        );

  GroupTile.fromGroup(
    Group group, {
    bool isShowBadge = false,
    Key? key,
  }) : this(
          src: group.icon,
          onTap: () => routemaster.push(
            '/groups/detail/${group.id}',
            queryParameters: <String, String>{
              GroupDetailScreen.isOwnerKey: '${group.isOwner}'
            },
          ),
          isShowOfficial: group.type == 'official',
          isShowAdmin: group.isOwner,
          title: group.name,
          subTitle: '${group.userCount}人',
          unread: isShowBadge ? group.unread : 0,
          key: key,
        );

  /// 画像のpath
  final String src;

  /// 画像取得失敗時に描画するWidget
  final Widget? errorWidget;

  /// タイトル
  final String title;

  /// サブタイトル
  final String subTitle;

  final VoidCallback onTap;

  /// 公式マークを表示するか否か
  final bool isShowOfficial;

  /// admin Iconを表示するか否か
  final bool isShowAdmin;

  // 未読数
  final int unread;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: OshirucoNetworkImage(
                      src,
                      type: OshirucoImageType.group,
                      errorWidget: errorWidget,
                    ),
                  ),
                  if (isShowOfficial)
                    Positioned(
                      child: Assets.icons.groupOfficial.image(
                        height: 36,
                        width: 40,
                      ),
                    ),
                  if (isShowAdmin)
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Assets.icons.admin.image(
                        height: 32,
                        width: 32,
                      ),
                    ),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Badge(number: unread),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  title,
                  style: OshirucoTextStyles.smallBold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      subTitle,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
