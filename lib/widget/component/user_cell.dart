import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';

class UserCell extends StatelessWidget {
  const UserCell({
    required this.userIcon,
    required this.nickname,
    required this.age,
    required this.gender,
    required this.livePlace,
    Key? key,
  }) : super(key: key);

  final String userIcon;
  final String nickname;
  final int age;
  final String gender;
  final String livePlace;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: OshirucoNetworkImage(
        userIcon,
        type: OshirucoImageType.user,
      ),
      title: Text(
        nickname,
        overflow: TextOverflow.ellipsis,
        style: OshirucoTextStyles.mediumBold,
      ),
      subtitle: Row(
        children: [
          Text(
            '$age歳',
            style: OshirucoTextStyles.smallGrey,
          ),
          const SizedBox(width: 12),
          Text(
            gender,
            style: OshirucoTextStyles.smallGrey,
          ),
          const SizedBox(width: 12),
          Text(
            livePlace,
            style: OshirucoTextStyles.smallGrey,
          ),
        ],
      ),
    );
  }
}
