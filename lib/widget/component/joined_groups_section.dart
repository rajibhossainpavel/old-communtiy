import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/group/group.dart';
import 'package:oshiruco_app/widget/component/group_shocase_tile.dart';

class JoinedGroupsSection extends StatelessWidget {
  const JoinedGroupsSection({
    this.groups = const [],
    Key? key,
  }) : super(key: key);
  final List<Group> groups;

  @override
  Widget build(BuildContext context) {
    return groups.isEmpty
        ? _emptyGroupWidget()
        : Container(
            color: Colors.white,
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: groups.length,
              itemBuilder: (context, index) => GroupShowcaseTile(groups[index]),
            ),
          );
  }

  Widget _emptyGroupWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.white,
      alignment: Alignment.center,
      child: const Text(
        '現在参加中のグループはありません',
        style: OshirucoTextStyles.mediumGreyBold,
      ),
    );
  }
}
