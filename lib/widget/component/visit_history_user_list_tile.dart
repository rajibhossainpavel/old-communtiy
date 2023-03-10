import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/model/visit_history_user/visit_history_user.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';

class VisitHistoryUserListTile extends StatelessWidget {
  const VisitHistoryUserListTile({
    required this.user,
    this.createdAt,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final VisitHistoryUser user;

  final DateTime? createdAt;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('yyyy/MM/dd HH:mm:ss', 'ja_JP');
    final formattedString =
        createdAt != null ? formatter.format(createdAt!.toLocal()) : '';
    return ListTile(
      tileColor: Colors.white,
      onTap: onTap,
      leading: OshirucoNetworkImage(
        user.photoPaths.profilePhoto(),
        type: OshirucoImageType.user,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              user.nickname,
              overflow: TextOverflow.ellipsis,
              style: OshirucoTextStyles.mediumBold,
            ),
          ),
          Text(
            formattedString,
            style: OshirucoTextStyles.smallGrey,
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            '${user.age.toOshirucoAge()}歳',
            style: OshirucoTextStyles.smallGrey,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            user.gender,
            style: OshirucoTextStyles.smallGrey,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            user.livePlace,
            style: OshirucoTextStyles.smallGrey,
          ),
        ],
      ),
    );
  }
}
