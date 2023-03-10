import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

class FilteringRankupPromotionSheet extends StatelessWidget {
  const FilteringRankupPromotionSheet({
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
    final width = MediaQuery.of(context).size.width;
    final isOsato = userStatus == UserStatus.osato;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [BoxShadow(offset: Offset(0, 4), blurRadius: 8)],
      ),
      width: width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.only(top: 10, right: 10),
              child: TextButton(
                onPressed: onClose,
                child: const Text(
                  '閉じる',
                  style: OshirucoTextStyles.mediumGreenBold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Assets.images.memberRankInform.image(height: 28),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                '会員ランクを変更すると、ポイントの消費をせず何度でも検索できます！検索を利用してどんどん気になる仲間を増やしましょう！',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: const TableBorder(
                  horizontalInside: BorderSide(
                    color: OshirucoColors.divider,
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: OshirucoColors.divider,
                    width: 1,
                  ),
                ),
                children: [
                  TableRow(children: [
                    Container(),
                    if (isOsato)
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.bottom,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                            bottom: 16,
                          ),
                          child: Assets.images.memberStatusOmoti.image(),
                        ),
                      ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.bottom,
                      child: Padding(
                        padding: EdgeInsets.only(
                          // おもちアイコンが無い場合にアイコンが大きくなりすぎるので調整
                          left: isOsato ? 8 : 24,
                          right: isOsato ? 8 : 24,
                          bottom: 16,
                        ),
                        child:
                            Assets.images.memberStatusOshirucoOsusume.image(),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.bottom,
                      child: Padding(
                        padding: EdgeInsets.only(
                          // おもちアイコンが無い場合にアイコンが大きくなりすぎるので調整
                          left: isOsato ? 8 : 24,
                          right: isOsato ? 8 : 24,
                          bottom: 16,
                        ),
                        child: Assets.images.memberStatusPremium.image(),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: const Text('性別'),
                    ),
                    if (isOsato) const Center(child: Text('○')),
                    const Center(child: Text('○')),
                    const Center(child: Text('○')),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: const FittedBox(child: Text('プロフィール\n写真の有無')),
                    ),
                    if (isOsato) const Center(child: Text('○')),
                    const Center(child: Text('○')),
                    const Center(child: Text('○')),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: const Text('年齢'),
                    ),
                    if (isOsato) const Center(child: Text('-')),
                    const Center(child: Text('○')),
                    const Center(child: Text('○')),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: const Text('居住地'),
                    ),
                    if (isOsato) const Center(child: Text('-')),
                    const Center(child: Text('○')),
                    const Center(child: Text('○')),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: const Text('出身地'),
                    ),
                    if (isOsato) const Center(child: Text('-')),
                    const Center(child: Text('○')),
                    const Center(child: Text('○')),
                  ]),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              width: width,
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
              padding: const EdgeInsets.symmetric(horizontal: 60),
              width: width,
              child: FlexibleRoundButton(
                label: '会員ランクの詳細をみる',
                onTap: onTapShowUserRankDetail,
                color: OshirucoColors.green,
                textStyle: OshirucoTextStyles.mediumGreenBold,
              ),
            ),
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
