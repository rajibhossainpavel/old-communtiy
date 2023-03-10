import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';

class ProfileDetailSection extends StatelessWidget {
  const ProfileDetailSection({required this.user, Key? key}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final appearanceKeys = ['身長', '体型', 'ヘアスタイル'];
    final appearanceValues = <String>[
      if (user.height > 0) '${user.height.toString()} cm' else '',
      user.bodyType,
      user.hair
    ];

    final characterKeys = ['性格', '社交性'];
    final characterValues = [user.personality, user.sociability];

    final livingKeys = ['結婚', '同居人', '休日'];
    final livingValues = [user.marriage, user.housemate, user.holiday];

    final propertyKeys = ['持ち家区分', '保有資産'];
    final propertyValues = [user.house, user.asset];

    final healthKeys = ['歩行速度', '持病'];
    final healthValues = [user.walking, user.sickness];

    final otherKeys = ['お酒', 'タバコ', 'かつて住んだところ', '印象に残った旅先', '兄弟姉妹', '宗教'];
    final otherValues = [
      user.alcohol,
      user.cigarettes,
      user.livedPlace,
      user.gonePlace,
      user.broAndSis,
      user.religion,
    ];
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          _profileDetailUnit(
            '外見',
            keys: appearanceKeys,
            values: appearanceValues,
          ),
          _profileDetailUnit(
            '性格',
            keys: characterKeys,
            values: characterValues,
          ),
          _profileDetailUnit(
            '生活',
            keys: livingKeys,
            values: livingValues,
          ),
          _profileDetailUnit(
            '資産',
            keys: propertyKeys,
            values: propertyValues,
          ),
          _profileDetailUnit(
            '健康',
            keys: healthKeys,
            values: healthValues,
          ),
          _profileDetailUnit(
            'その他',
            keys: otherKeys,
            values: otherValues,
          ),
        ],
      ),
    );
  }

  Widget _profileDetailUnit(
    String title, {
    required List<String> keys,
    required List<String> values,
  }) {
    assert(keys.length == values.length);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: OshirucoColors.bgGreyDark,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 4.0,
            ),
            child: Text(
              title,
              style: OshirucoTextStyles.mediumGreyBold,
            ),
          ),
        ),
        ...List.generate(
          keys.length * 2 - 1,
          (index) {
            return index.isEven
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: _profileDetailTile(
                      key: keys[index ~/ 2],
                      value: values[index ~/ 2],
                    ),
                  )
                : const OshirucoDivider(
                    thickness: 2.0,
                  );
          },
        ),
      ],
    );
  }

  Widget _profileDetailTile({required String key, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          key,
          style: OshirucoTextStyles.mediumGrey,
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            value,
            style: OshirucoTextStyles.mediumGrey,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
