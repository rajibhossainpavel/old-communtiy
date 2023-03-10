import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/filter_type.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

Future<bool?> showUseFilteringPointDialog(
  BuildContext context,
  List<FilterType> filterTypes,
) {
  // 1項目検索するのに必要なポイント数
  const pointPerProperty = 30;

  return showDialog<bool?>(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: const EdgeInsets.all(10),
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      title: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Assets.images.point.image(width: 80),
          const SizedBox(width: 4),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: OshirucoTextStyles.medium,
                children: [
                  TextSpan(
                    text: '${filterTypes.length * pointPerProperty}',
                    style: OshirucoTextStyles.largeGreenBold,
                  ),
                  const TextSpan(
                    text: 'ポイント',
                    style: OshirucoTextStyles.mediumGreenBold,
                  ),
                  const TextSpan(text: '消費して以下条件で検索します'),
                ],
              ),
            ),
          )
        ],
      ),
      content: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...filterTypes
                .map(
                  (type) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Assets.icons.check.image(width: 22),
                        const SizedBox(width: 10),
                        Text(type.getTitle()),
                      ],
                    ),
                  ),
                )
                .toList(),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: FlexibleRoundButton(
                label: 'この条件で検索',
                onTap: () => Navigator.of(context).pop(true),
                color: OshirucoColors.green,
                filled: true,
                textStyle: OshirucoTextStyles.mediumWhiteBold,
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Center(
                child: Text(
                  'キャンセル',
                  style: OshirucoTextStyles.smallBold.copyWith(
                    color: OshirucoColors.green,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    ),
  );
}
