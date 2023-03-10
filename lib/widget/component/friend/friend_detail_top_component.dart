import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/enum/friend_matching_type.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/provider/friend_provider.dart';
import 'package:oshiruco_app/widget/component/favorite_button.dart';
import 'package:oshiruco_app/widget/component/friend/friend_media_component.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

class FriendDetailTopComponent extends HookConsumerWidget {
  const FriendDetailTopComponent(
    this._user, {
    Key? key,
  }) : super(key: key);

  final User _user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final friendDetailController = ref.watch(friendDetailProvider.notifier);
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          FriendMediaComponent.fromUser(
            user: _user,
            key: ValueKey(_user.uuid),
            children: [
              SizedBox(
                height: 28,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    _user.nickname,
                    style: OshirucoTextStyles.largeGreyBold,
                    overflow: TextOverflow.clip,
                  ),
                ),
                Column(
                  children: [
                    FavoriteButton(
                      onTap: () => <void>{},
                      isSelected: false,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _user.liked.toString(),
                      style: OshirucoTextStyles.largeGreyBold,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: OshirucoColors.background,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 32,
            ),
            child: _actionButton(
              ref,
              onPressed: () => friendDetailController.onPressedActionButton(
                context,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// ここのボタンは5つに分岐
  /// 1. ブロック中 => ブロック中 => snackBar,
  /// 2. 挨拶済み： => 挨拶待ち => snackBar
  /// 3. 挨拶された： => 挨拶ありがとう => ??
  /// 4. マッチング済み: => メッセージを送る => chat画面
  /// 5. 何もしていない。 => 挨拶する。 => modal表示
  Widget _actionButton(
    WidgetRef ref, {
    required VoidCallback onPressed,
  }) {
    final matchingType = ref.watch(
      friendDetailProvider.select((state) => state.matchingType),
    );
    return RoundButton(
      matchingType.getActionButtonColor(),
      matchingType.getActionButtonTitle(),
      onPressed,
      true,
      textStyle: matchingType.getActionButtonTextStyle(),
    );
  }
}
