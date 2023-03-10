import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

Future<bool?> showConfirmJoinGroupDialog(
  BuildContext context, {
  required VoidCallback onTapUpdateUserRank,
  required VoidCallback onTapShowUserRankDetail,
}) {
  return _showGroupConfirmDialog(
    context,
    title: 'グループ参加',
    point: 20,
    buttonLabel: 'グループに参加する',
    contentTitle: 'ポイント消費無しでグループに参加するには？',
    contentBody:
        '会員ランクをアップするとグループ参加にポイントは消費されません。もちろん参加するグループ数に制限もありません。また会員特典として毎月のポイント付与や限定特典もあります。',
    onTapUpdateUserRank: onTapUpdateUserRank,
    onTapShowUserRankDetail: onTapShowUserRankDetail,
  );
}

Future<bool?> showConfirmCreateGroupDialog(
  BuildContext context, {
  required VoidCallback onTapUpdateUserRank,
  required VoidCallback onTapShowUserRankDetail,
}) {
  return _showGroupConfirmDialog(
    context,
    title: '新規グループ作成',
    point: 200,
    buttonLabel: 'グループを作成する',
    contentTitle: 'ポイント消費無しでグループ作成するには？',
    contentBody:
        '会員ランクをアップすると新規グループ作成にポイント消費はされません。また会員特典として毎月のポイント付与や限定特典もあります。',
    onTapUpdateUserRank: onTapUpdateUserRank,
    onTapShowUserRankDetail: onTapShowUserRankDetail,
  );
}

Future<bool?> showConfirmSendGroupChatDialog(
  BuildContext context, {
  required VoidCallback onTapUpdateUserRank,
  required VoidCallback onTapShowUserRankDetail,
}) {
  return showDialog<bool?>(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      title: Container(
        decoration: const BoxDecoration(
          color: OshirucoColors.green,
          borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(false),
                icon: const Icon(Icons.close, color: Colors.white),
              ),
            ),
            const SizedBox(width: 4),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: OshirucoTextStyles.mediumBold,
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Assets.images.iconOsatou.image(width: 40),
                  ),
                  const TextSpan(
                    text: ' おさとう会員',
                    style: OshirucoTextStyles.mediumWhiteBold,
                  ),
                  const TextSpan(text: 'の方は、\n'),
                  const TextSpan(
                    text: '1',
                    style: OshirucoTextStyles.largeWhiteBold,
                  ),
                  const TextSpan(
                    text: 'メッセージ',
                    style: OshirucoTextStyles.mediumWhite,
                  ),
                  const TextSpan(text: 'につき'),
                  const TextSpan(
                    text: '1',
                    style: OshirucoTextStyles.largeWhiteBold,
                  ),
                  const TextSpan(
                    text: '挨拶',
                    style: OshirucoTextStyles.mediumWhite,
                  ),
                  const TextSpan(text: 'が\n\n消費されます'),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      content: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '会員ランクをアップすると制限なく自由にメッセージ投稿が可能になります。また会員特典として毎月のポイント付与や限定特典もあります。',
                style: OshirucoTextStyles.small,
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  '*以下会員ランクが対象です。',
                  style: OshirucoTextStyles.smallGreen.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.memberStatusOmoti.image(width: 80),
                    const SizedBox(width: 10),
                    Assets.images.memberStatusOshiruco.image(width: 80),
                    const SizedBox(width: 10),
                    Assets.images.memberStatusPremium.image(width: 80)
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: FlexibleRoundButton(
                  label: '会員ランクを変更する',
                  onTap: onTapUpdateUserRank,
                  color: OshirucoColors.text,
                  textStyle: OshirucoTextStyles.mediumWhiteBold,
                  filled: true,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: FlexibleRoundButton(
                  label: '会員ランクの詳細をみる',
                  onTap: onTapShowUserRankDetail,
                  color: OshirucoColors.green,
                  textStyle: OshirucoTextStyles.mediumGreenBold,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    ),
  );
}

Future<bool?> _showGroupConfirmDialog(
  BuildContext context, {
  required String title,
  required String buttonLabel,
  required String contentTitle,
  required String contentBody,
  required int point,
  required VoidCallback onTapUpdateUserRank,
  required VoidCallback onTapShowUserRankDetail,
}) {
  return showDialog<bool?>(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      title: Container(
        decoration: const BoxDecoration(
          color: OshirucoColors.green,
          borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(false),
                icon: const Icon(Icons.close, color: Colors.white),
              ),
            ),
            const SizedBox(width: 4),
            RichText(
              text: TextSpan(
                style: OshirucoTextStyles.mediumBold,
                children: [
                  TextSpan(
                    text: title,
                    style: OshirucoTextStyles.largeWhiteBold,
                  ),
                  const TextSpan(text: 'には\n'),
                  TextSpan(
                    text: '$point',
                    style: OshirucoTextStyles.largeWhiteBold,
                  ),
                  const TextSpan(
                    text: 'ポイント',
                    style: OshirucoTextStyles.mediumWhite,
                  ),
                  const TextSpan(text: '必要です'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: FlexibleRoundButton(
                label: buttonLabel,
                filled: true,
                onTap: () => Navigator.of(context).pop(true),
                color: OshirucoColors.green,
                borderColor: Colors.white,
                textStyle: OshirucoTextStyles.mediumWhiteBold,
              ),
            ),
          ],
        ),
      ),
      content: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Q', style: OshirucoTextStyles.largeGreenBold),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          contentTitle,
                          style: OshirucoTextStyles.smallBold,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          contentBody,
                          style: OshirucoTextStyles.small,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  '*以下会員ランクが対象です。',
                  style: OshirucoTextStyles.smallGreen.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.memberStatusOmoti.image(width: 80),
                    const SizedBox(width: 10),
                    Assets.images.memberStatusOshiruco.image(width: 80),
                    const SizedBox(width: 10),
                    Assets.images.memberStatusPremium.image(width: 80)
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: FlexibleRoundButton(
                  label: '会員ランクを変更する',
                  onTap: onTapUpdateUserRank,
                  color: OshirucoColors.text,
                  textStyle: OshirucoTextStyles.mediumWhiteBold,
                  filled: true,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: FlexibleRoundButton(
                  label: '会員ランクの詳細をみる',
                  onTap: onTapShowUserRankDetail,
                  color: OshirucoColors.green,
                  textStyle: OshirucoTextStyles.mediumGreenBold,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    ),
  );
}
