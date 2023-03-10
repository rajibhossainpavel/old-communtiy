import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/client/remote_config/config.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/user_information/user_information.dart';
import 'package:oshiruco_app/provider/friend_provider.dart';
import 'package:oshiruco_app/widget/component/banner_view.dart';
import 'package:oshiruco_app/widget/component/friend/friend_tile.dart';

import 'package:oshiruco_app/model/remote_config/banner/banner.dart'
    as rc_banner;

class FriendList extends HookConsumerWidget {
  const FriendList(this._users, {Key? key}) : super(key: key);
  final List<UserInformation> _users;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final banner = Config.getBanner(rc_banner.BannerPlace.users);
    final controller = ref.watch(friendScreenProvider.notifier);
    final state = ref.watch(friendScreenProvider);
    final width = MediaQuery.of(context).size.width;
    return _users.isEmpty
        ? _emptyScreen(width)
        : ListView.builder(
            physics: const ClampingScrollPhysics(),
            controller: controller.scrollController,
            itemBuilder: (context, int index) {
              if (index == 0) {
                return BannerView(banner: banner);
              }
              if (state.isLoading && index == _users.length) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final user = _users[index - 1];
              return FriendTile(user: user);
            },
            itemCount: _users.length + 1,
          );
  }

  Widget _emptyScreen(double width) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Assets.images.logoUsers.image(
              height: width / 3,
              width: width / 3,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '検索時条件に該当する仲間は見つかりませんでした。',
            style: OshirucoTextStyles.mediumGreen,
          ),
          const SizedBox(height: 16),
          const Text(
            '検索条件を緩めて、再度検索してみましょう。',
            style: OshirucoTextStyles.small,
          ),
        ],
      ),
    );
  }
}
