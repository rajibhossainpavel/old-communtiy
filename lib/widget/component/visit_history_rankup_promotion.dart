import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

class VisitHistoryRankupPromotion extends StatelessWidget {
  const VisitHistoryRankupPromotion({
    Key? key,
    required this.userStatus,
    required this.onTapShowUserRankDetail,
    required this.onTapUpdateUserRank,
  }) : super(key: key);

  final VoidCallback onTapShowUserRankDetail;
  final VoidCallback onTapUpdateUserRank;
  final UserStatus userStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: OshirucoColors.background,
        child: Column(
          children: [
            const SizedBox(height: 16),
            userStatus == UserStatus.omochi
                ? Assets.images.limit10.image()
                : Assets.images.limit30.image(),
            const SizedBox(height: 16),
            BlurredVisitHistoryUserListTile(
              label: userStatus == UserStatus.omochi
                  ? 'おもち会員の方は10名までしか\n足あとが閲覧できません。'
                  : 'おしるこ会員の方は30名までし\nか、足あとが閲覧できません。',
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 28,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(color: Colors.white, height: 14),
                  ),
                  Assets.images.memberRankInform.image(height: 28),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              child: _RankupPromotionContent(
                userStatus: userStatus,
                scale: 1.0,
                onTapShowUserRankDetail: onTapShowUserRankDetail,
                onTapUpdateUserRank: onTapUpdateUserRank,
              ),
            ),
          ],
        ));
  }
}

class VisitHistoryRankupPromotionSheet extends StatelessWidget {
  const VisitHistoryRankupPromotionSheet({
    Key? key,
    required this.userStatus,
    required this.onTapShowUserRankDetail,
    required this.onTapUpdateUserRank,
    this.onClose,
  }) : super(key: key);

  final UserStatus userStatus;
  final VoidCallback onTapShowUserRankDetail;
  final VoidCallback onTapUpdateUserRank;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    // 小さいサイズの端末だと表示しきれないので、画像などを縮小する
    final scale = MediaQuery.of(context).size.height < 720 ? 0.75 : 1.0;

    return Card(
      elevation: 20,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      margin: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (userStatus != UserStatus.osato)
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(right: 16),
              child: TextButton(
                onPressed: onClose,
                child: const Text(
                  '閉じる',
                  style: OshirucoTextStyles.mediumGreenBold,
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60 * scale),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Assets.images.memberRankInform.image(height: 28),
                const SizedBox(height: 16),
                _RankupPromotionContent(
                  userStatus: userStatus,
                  scale: scale,
                  onTapShowUserRankDetail: onTapShowUserRankDetail,
                  onTapUpdateUserRank: onTapUpdateUserRank,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BlurredVisitHistoryUserListTile extends StatelessWidget {
  const BlurredVisitHistoryUserListTile({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Assets.images.visitBlar.image(),
      Text(
        label,
        style: OshirucoTextStyles.mediumBold,
      ),
    ]);
  }
}

class _RankupPromotionContent extends StatelessWidget {
  final UserStatus userStatus;
  final double scale;
  final VoidCallback onTapShowUserRankDetail;
  final VoidCallback onTapUpdateUserRank;

  const _RankupPromotionContent({
    Key? key,
    required this.userStatus,
    required this.scale,
    required this.onTapShowUserRankDetail,
    required this.onTapUpdateUserRank,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * scale;

    return Column(
      children: [
        Text(
          '会員ランクを変更し、足あとを閲覧してどんどん気になる仲間を増やしましょう！',
          style: OshirucoTextStyles.medium.copyWith(
            fontSize: OshirucoTextSize.medium * scale,
          ),
        ),
        const SizedBox(height: 16),
        Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Assets.images.rankupSarani.image(
                height: 22 * scale,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10),
              child: Assets.images.rankupPremium.image(
                height: 70 * scale,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        if (userStatus != UserStatus.oshiruco) ...[
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: -9,
                child: Assets.images.osusume.image(height: 20 * scale),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20),
                child: Assets.images.rankupOshiruco.image(
                  height: 66 * scale,
                ),
              ),
            ],
          ),
        ],
        if (userStatus == UserStatus.osato) ...[
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Assets.images.rankupOmoti.image(height: 66 * scale),
          ),
        ],
        const SizedBox(height: 16),
        SizedBox(
          width: width,
          child: FlexibleRoundButton(
            label: '会員ランクの詳細をみる',
            onTap: onTapShowUserRankDetail,
            color: OshirucoColors.green,
            textStyle: OshirucoTextStyles.mediumGreenBold,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: width,
          child: FlexibleRoundButton(
            label: '会員ランクを変更する',
            onTap: onTapUpdateUserRank,
            color: OshirucoColors.text,
            textStyle: OshirucoTextStyles.mediumWhiteBold,
            filled: true,
          ),
        ),
        const SizedBox(height: 36),
      ],
    );
  }
}
