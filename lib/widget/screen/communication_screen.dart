import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/client/remote_config/config.dart';
import 'package:oshiruco_app/controller/unread_controller.dart';
import 'package:oshiruco_app/model/enum/communication_tab_type.dart';
import 'package:oshiruco_app/model/remote_config/banner/banner.dart'
    as rc_banner;
import 'package:oshiruco_app/provider/communication_provider.dart';
import 'package:oshiruco_app/provider/unread_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/badge.dart';
import 'package:oshiruco_app/widget/component/banner_view.dart';
import 'package:oshiruco_app/widget/component/communication/communication_tab.dart';
import 'package:oshiruco_app/widget/component/sliver_appbar_delegate.dart';

class CommunicationScreen extends HookConsumerWidget {
  const CommunicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 3);
    final banner = Config.getBanner(rc_banner.BannerPlace.friends);
    final unreadController = ref.watch(unreadProvider.notifier);
    final unreadState = ref.watch(unreadProvider);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: false,
              pinned: true,
              actions: [
                IconButton(
                  onPressed: () => routemaster.push('/my_page'),
                  icon: const Icon(
                    Icons.person_outline,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ],
              leading: IconButton(
                onPressed: () => routemaster.push('/info'),
                icon: const Icon(
                  Icons.info_outline,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              flexibleSpace: const FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'やりとり',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SliverAppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              floating: false,
              pinned: false,
              flexibleSpace: BannerView(banner: banner),
            ),
            SliverPersistentHeader(
              floating: false,
              pinned: true,
              delegate: SliverAppBarDelegate(
                TabBar(
                  indicatorWeight: 3.0,
                  labelPadding: EdgeInsets.zero,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),

                  //For Selected tab

                  controller: tabController,
                  tabs: <Widget>[
                    _TabWithBadge(
                      text: 'メッセージ',
                      badgeNumber: unreadState.message,
                    ),
                    _TabWithBadge(
                      text: '届いた挨拶',
                      badgeNumber: unreadState.like,
                    ),
                    const Tab(text: '送った挨拶'),
                  ],
                  onTap: (index) {
                    if (unreadState.like > 0) {
                      unreadController.markAsRead(UnreadKind.like);
                    }
                  },
                ),
                valueForRebuild: unreadState.commucation,
              ),
            ),
          ];
        },
        body: CommunicationBaseScreen(
          tabController: tabController,
        ),
      ),
    );
  }
}

class CommunicationBaseScreen extends HookConsumerWidget {
  const CommunicationBaseScreen({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  TabBarView emptyCommunicationTabs({
    required Future<void> Function() onRefresh,
  }) {
    return TabBarView(
      controller: _tabController,
      children: [
        CommunicationTab(
          const [],
          type: CommunicationTabType.message,
          onRefresh: onRefresh,
        ).getNoDataComponent(),
        CommunicationTab(
          const [],
          type: CommunicationTabType.likeFrom,
          onRefresh: onRefresh,
        ).getNoDataComponent(),
        CommunicationTab(
          const [],
          type: CommunicationTabType.likeTo,
          onRefresh: onRefresh,
        ).getNoDataComponent(),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(communicationProvider.notifier);
    final unreadController = ref.watch(unreadProvider.notifier);

    final create = useMemoized(
      () => controller.init(context),
    );
    final snapshot = useFuture(create);
    final state = ref.watch(communicationProvider);
    useEffect(() {
      if (state.uuidChatRoomMapper.isEmpty) {
        return;
      }

      // 各チャットルームの自分のユーザーデータを取得
      final memberDataForEachRoom =
          state.uuidChatRoomMapper.entries.map((uuidRoomMap) {
        final uuid = uuidRoomMap.key;
        final room = uuidRoomMap.value;
        return room.membersData.firstWhere((member) => member.uuid != uuid);
      });

      final allRead = memberDataForEachRoom.every((my) => my.readState);

      if (allRead) {
        unreadController.markAsRead(UnreadKind.message);
      }
    }, [state.uuidChatRoomMapper]);
    if (snapshot.hasError) {
      return emptyCommunicationTabs(
        onRefresh: () => controller.init(context),
      );
    }
    if (snapshot.connectionState != ConnectionState.done) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }

    return TabBarView(
      children: [
        CommunicationTab(
          state.matchedUsers,
          type: CommunicationTabType.message,
          onRefresh: controller.loadMatchedUsers,
        ),
        CommunicationTab(
          state.fromLikedUsers,
          type: CommunicationTabType.likeFrom,
          onRefresh: () => controller.loadFromLikedUsers(isInitialize: true),
        ),
        CommunicationTab(
          state.toLikedUsers,
          type: CommunicationTabType.likeTo,
          onRefresh: () => controller.loadToLikedUsers(isInitialize: true),
        ),
      ],
      controller: _tabController,
    );
  }
}

class _TabWithBadge extends StatelessWidget {
  final String text;
  final int badgeNumber;

  const _TabWithBadge({
    Key? key,
    required this.text,
    required this.badgeNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Spacer(),
        Tab(text: text),
        Expanded(
          child: Center(
            child: Badge(
              number: badgeNumber,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
