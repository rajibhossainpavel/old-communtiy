import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/model/user_information/user_information.dart';
import 'package:oshiruco_app/provider/self_history_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/bubble_container.dart';
import 'package:oshiruco_app/widget/component/image_carousel.dart';

class FriendMediaComponent extends HookConsumerWidget {
  const FriendMediaComponent({
    required String tweet,
    required bool isSelfHistory,
    required String photoPaths,
    required String nickname,
    required Gender gender,
    required String uuid,
    required List<Widget> children,
    Key? key,
  })  : _tweet = tweet,
        _isSelfHistory = isSelfHistory,
        _photoPaths = photoPaths,
        _nickname = nickname,
        _gender = gender,
        _children = children,
        _uuid = uuid,
        super(key: key);

  FriendMediaComponent.fromUserInformation({
    required UserInformation user,
    List<Widget>? children,
    Key? key,
  }) : this(
          tweet: user.tweet,
          isSelfHistory: user.isHistory,
          photoPaths: user.photoPaths,
          uuid: user.uuid,
          gender: GenderExtension.fromString(user.gender),
          nickname: user.nickname,
          children: children ?? [],
          key: key,
        );

  FriendMediaComponent.fromUser({
    required User user,
    List<Widget>? children,
    Key? key,
  }) : this(
          tweet: user.tweet,
          isSelfHistory: user.isSelfHistory,
          photoPaths: user.photoPaths,
          uuid: user.uuid,
          gender: GenderExtension.fromString(user.gender),
          nickname: user.nickname,
          children: children ?? [],
          key: key,
        );

  final String _tweet;

  final bool _isSelfHistory;

  final String _photoPaths;

  final String _uuid;

  final Gender _gender;

  final String _nickname;

  final List<Widget> _children;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      key: key,
      alignment: Alignment.bottomCenter,
      children: [
        ..._imageComponent(_photoPaths),
        _tweetComponent(),
        if (_isSelfHistory)
          _selfHistoryIcon(
            ref,
            '/friends/detail/$_uuid/selfhistory',
          ),
      ],
    );
  }

  List<Widget> _imageComponent(String photoPath) {
    final page = useState<int>(0);
    if (photoPath.isEmpty) {
      return [_gender.toImage().image()];
    }
    final widgets = <Widget>[];

    widgets.add(
      ImageCarousel(
        photoPath.splitPath(),
        page: page,
      ),
    );

    if (photoPath.splitPath().length >= 2) {
      widgets.add(
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageCarouselPosition(
              photoPath.splitPath().length,
              position: page.value,
            ),
          ),
        ),
      );
    }
    return widgets;
  }

  Widget _tweetComponent() {
    return Column(
      children: [
        if (_tweet.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BubbleContainer(_tweet),
          ),
        ..._children,
      ],
    );
  }

  Widget _selfHistoryIcon(WidgetRef ref, String selfHistoryRoutePath) {
    final controller = ref.watch(selfHistoryProvider(_uuid).notifier);
    return Positioned(
      top: 10,
      right: 0,
      child: GestureDetector(
        onTap: () {
          controller.setNickName(_nickname);
          routemaster.push(
            selfHistoryRoutePath,
          );
        },
        child: Assets.icons.searchIconHistory.image(
          height: 48,
        ),
      ),
    );
  }
}
