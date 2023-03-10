import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/friend_matching_type.dart';
import 'package:oshiruco_app/provider/communication_provider.dart';
import 'package:oshiruco_app/provider/friend_provider.dart';
import 'package:oshiruco_app/provider/self_history_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/friend/friend_detail_top_component.dart';
import 'package:oshiruco_app/widget/component/friend/profile_section.dart';
import 'package:oshiruco_app/widget/component/friend/section_container.dart';
import 'package:oshiruco_app/widget/component/joined_groups_section.dart';
import 'package:oshiruco_app/widget/component/latest_diary_section.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/profile_detail_section.dart';

class FriendDetailScreen extends HookConsumerWidget {
  const FriendDetailScreen(
    this._uuid, {
    Key? key,
  }) : super(key: key);

  final String _uuid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(friendDetailProvider.notifier);
    final user = ref.watch(
      friendDetailProvider.select((state) => state.user),
    );
    final matchingController = ref.watch(matchingProvider.notifier);
    final matchingType = ref.watch(friendDetailProvider).matchingType;

    useEffect(() {
      if (matchingType == FriendMatchingType.initial) {
        matchingController.fetchInitialData(context);
      }
    }, [matchingType]);

    return Scaffold(
      key: ValueKey(_uuid),
      appBar: oshirucoAppBar(
        title: user?.nickname ?? '',
        actions: [
          IconButton(
            onPressed: () => controller.onPressedOptionButton(context),
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SafeArea(
        child: FriendDetailBase(
          _uuid,
        ),
      ),
    );
  }
}

class FriendDetailBase extends HookConsumerWidget {
  const FriendDetailBase(
    this._uuid, {
    Key? key,
  }) : super(key: key);

  final String _uuid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(friendDetailProvider.notifier);
    final selfHistoryController =
        ref.watch(selfHistoryProvider(_uuid).notifier);
    final create = useMemoized(
      () => controller.loadInitialData(
        _uuid,
      ),
    );
    final snapshot = useFuture(create);
    if (snapshot.error != null) {
      return Center(
        child: Text(snapshot.error.toString()),
      );
    }
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: OshirucoCircleProgressIndicator());
    }
    final user = ref.watch(
      friendDetailProvider.select((state) => state.user),
    );

    final groups = ref.watch(
      friendDetailProvider.select((state) => state.groups),
    );
    if (user == null) {
      return const Center(
        child: Text('データの取得に失敗しました'),
      );
    }

    final latestDiary = controller.latestDiary;
    return SingleChildScrollView(
      child: DecoratedBox(
        decoration: const BoxDecoration(color: OshirucoColors.gbGrey),
        child: Column(
          children: [
            FriendDetailTopComponent(user),
            SectionContainer(
                body: _IntroSection(intro: user.introduction),
                title: '自己紹介',
                icon: Assets.icons.intro),
            SectionContainer(
              body: ProfileSection(user: user),
              title: 'プロフィール',
              icon: Assets.icons.profileIconIndentity,
            ),
            SectionContainer(
              body: JoinedGroupsSection(
                groups: groups,
              ),
              title: '参加しているグループ',
              icon: Assets.icons.profileIconGroupGray,
            ),
            if (user.isSelfHistory) ...[
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  selfHistoryController.setNickName(user.nickname);
                  routemaster.push('selfhistory');
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Text(
                    '${user.nickname}さんの自分史を見る >',
                    style: OshirucoTextStyles.mediumGreyBold,
                  ),
                ),
              ),
            ],
            SectionContainer(
              icon: Assets.icons.profileIconDiary,
              title: '最新の日記',
              tail: latestDiary != null
                  ? LatestDiarySection(
                      latestDiary,
                      uuid: _uuid,
                    ).viewAllButton()
                  : const SizedBox(),
              body: latestDiary != null
                  ? LatestDiarySection(latestDiary, uuid: _uuid)
                  : Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: const Text(
                        '投稿がありません',
                        style: OshirucoTextStyles.mediumGreyBold,
                      ),
                    ),
            ),
            SectionContainer(
              icon: Assets.icons.profileIconDetails,
              title: 'プロフィール詳細',
              body: ProfileDetailSection(
                user: user,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _IntroSection extends StatelessWidget {
  final String intro;

  const _IntroSection({Key? key, required this.intro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (intro.isEmpty) {
      return Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: const Text(
          '自己紹介はありません',
          style: OshirucoTextStyles.mediumGreyBold,
        ),
      );
    }

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        intro,
        style: const TextStyle(
          fontSize: OshirucoTextSize.small,
        ),
      ),
    );
  }
}
