import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_redirect/store_redirect.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/provider/my_page_controller_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';
import 'package:oshiruco_app/widget/component/user_icon.dart';

class MyPageScreen extends HookConsumerWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myPageControllerProvider);
    final user = state.user;
    final controller = ref.watch(myPageControllerProvider.notifier);
    return Scaffold(
      appBar: oshirucoAppBar(title: 'マイページ'),
      backgroundColor: OshirucoColors.background,
      body: state.user == null
          ? const Center(
              child: OshirucoCircleProgressIndicator(),
            )
          : ListView(
              children: [
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () => routemaster.push('/my_page/edit'),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 56,
                          width: 56,
                          child: UserIcon(
                            user?.photoPaths ?? '',
                            user?.gender ?? '',
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'プロフィールを編集',
                                style: OshirucoTextStyles.mediumBold,
                              ),
                              Text(
                                state.user?.nickname ?? '',
                                maxLines: 1,
                                style: OshirucoTextStyles.small,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        _greyArrow(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                _myPageCell(
                  leading: Assets.icons.personalHistory.image(
                    height: 32,
                    width: 32,
                  ),
                  title: '自分史を編集',
                  onTap: () => routemaster.push('/my_page/edit-self-history'),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'ステータス',
                    style: OshirucoTextStyles.mediumGrey,
                  ),
                ),
                const SizedBox(height: 8),
                _myPageCell(
                  leading: Assets.icons.member.image(height: 32),
                  title: '会員ランク',
                  tailing: Row(
                    children: [
                      if (user?.status != null)
                        user!.status.toSvg().svg(
                              height: 32,
                            ),
                      const SizedBox(width: 8),
                      Text(
                        user?.status.getTitle() ?? '',
                        style: OshirucoTextStyles.medium,
                      ),
                    ],
                  ),
                  onTap: () async {
                    final retunedValue = routemaster.push('user_status');
                    await retunedValue.result;
                    await controller.fetchUser();
                  },
                ),
                const OshirucoDivider(),
                _myPageCell(
                  leading: Assets.icons.point.image(height: 32),
                  title: 'おしるこポイント',
                  tailing: Text(
                    user?.points == null ? '' : '${user?.points}ポイント',
                    style: OshirucoTextStyles.medium,
                  ),
                  onTap: () async {
                    final retunedValue = routemaster.push<int?>('point');
                    final updatedPoints = await retunedValue.result;
                    if (updatedPoints != user?.points) {
                      await controller.fetchUser();
                    }
                  },
                ),
                const OshirucoDivider(),
                _myPageCell(
                  leading: Assets.icons.footprint.image(height: 32),
                  title: '足あと',
                  onTap: () {
                    routemaster.push('visit-history');
                  },
                ),
                const OshirucoDivider(),
                _myPageCell(
                  leading: Assets.icons.footprintSetting.image(height: 32),
                  title: '足あと設定',
                  onTap: () {
                    routemaster.push('visit-history-setting');
                  },
                ),
                const OshirucoDivider(),
                _myPageCell(
                  leading: Assets.icons.favorite.image(height: 32),
                  title: 'お気に入り',
                  onTap: () => routemaster.push('favorite'),
                ),
                const OshirucoDivider(),
                _myPageCell(
                  leading: Assets.icons.block.image(height: 32),
                  title: 'ブロックユーザー',
                  onTap: () => routemaster.push('block'),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'おしるこについて',
                    style: OshirucoTextStyles.mediumGrey,
                  ),
                ),
                const SizedBox(height: 8),
                _myPageCell(
                  title: 'ヘルプ',
                  onTap: () {
                    routemaster.push('help');
                  },
                ),
                const OshirucoDivider(),
                _myPageCell(
                  title: '各種規約',
                  onTap: () {
                    routemaster.push('terms');
                  },
                ),
                const OshirucoDivider(),
                _myPageCell(
                  title: '運営会社',
                  onTap: () => routemaster.push('company'),
                ),
                const OshirucoDivider(),
                _myPageCell(
                  title: '「おしるこ」を評価する',
                  onTap: () {
                    StoreRedirect.redirect(
                      androidAppId: 'jp.cayto.oshiruco.android',
                      iOSAppId: '1478365199',
                    );
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => controller.onTapVersion(context, ref),
                  child: Center(
                    child: Text(
                      'version ${state.version}',
                      style: OshirucoTextStyles.smallGreyBold,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
              ],
            ),
    );
  }

  Widget _myPageCell({
    required String title,
    Widget? leading,
    Widget? tailing,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (leading != null) leading,
            if (leading != null) const SizedBox(width: 12),
            Text(
              title,
              style: OshirucoTextStyles.medium,
            ),
            const Spacer(),
            if (tailing != null) tailing,
            const SizedBox(width: 12),
            _greyArrow(),
          ],
        ),
      ),
    );
  }

  Icon _greyArrow() {
    return const Icon(
      Icons.arrow_forward_ios,
      color: OshirucoColors.grey,
    );
  }
}
