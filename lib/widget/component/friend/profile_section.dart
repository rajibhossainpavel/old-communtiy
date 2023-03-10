import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    required this.user,
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final colInfos = [
      '${user.age.toOshirucoAge()}歳',
      user.gender,
      user.livePlace,
      user.birthPlace,
      user.bloodType
    ];
    const colNames = ['おしるこ年齢', '性別', '居住地', '出身地', '血液型'];
    return ListView.separated(
      itemBuilder: (context, index) {
        if (colInfos[index].isNotEmpty) {
          return _profileSectionTile(
            title: colNames[index],
            info: colInfos[index],
          );
        }
        return const SizedBox();
      },
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const OshirucoDivider(),
      itemCount: colInfos.length,
    );
  }

  Widget _profileSectionTile({
    required String title,
    required String info,
  }) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: OshirucoTextStyles.small,
          ),
          Text(
            info,
            style: const TextStyle(
              fontSize: OshirucoTextSize.small,
              color: Color(0xFF579624),
            ),
          ),
        ],
      ),
    );
  }
}
