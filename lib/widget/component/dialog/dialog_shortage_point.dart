import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

Future<void> showShortagePointDialog(
  BuildContext context, {
  required VoidCallback onTapUpdateUserRank,
  required VoidCallback onTapBuyPoint,
}) {
  return showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      titlePadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      title: Stack(
        alignment: Alignment.topCenter,
        children: [
          Assets.images.curvedHeader.image(),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: RichText(
              text: const TextSpan(
                text: 'ポイント',
                style: OshirucoTextStyles.largeWhiteBold,
                children: [
                  TextSpan(
                    text: 'が不足しています',
                    style: OshirucoTextStyles.mediumWhite,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.images.wouldYouLikeRankup.image(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'ポイ活もいいけど、会員ランクを変更して毎月のポイント付与や限定特典、限定機能で10倍楽しめる！',
              style: OshirucoTextStyles.small,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: FlexibleRoundButton(
              label: '会員ランクを変更する',
              color: OshirucoColors.green,
              filled: true,
              onTap: onTapUpdateUserRank,
              textStyle: OshirucoTextStyles.mediumWhiteBold,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Assets.images.wouldYouLikeBuyPoint.image(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'ポイ活もいいけど、手っ取り早くポイント購入する！',
              style: OshirucoTextStyles.small,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: FlexibleRoundButton(
              label: 'ポイントを購入する',
              color: OshirucoColors.green,
              filled: true,
              onTap: onTapBuyPoint,
              textStyle: OshirucoTextStyles.mediumWhiteBold,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    ),
  );
}
