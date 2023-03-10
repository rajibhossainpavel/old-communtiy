import 'dart:async';
import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/controller/group_screen_controller.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/event/event.dart';
import 'package:oshiruco_app/provider/application_initialize_provider.dart';
import 'package:oshiruco_app/provider/communication_provider.dart';
import 'package:oshiruco_app/provider/concierge_provider.dart';
import 'package:oshiruco_app/provider/group_screen_provider.dart';
import 'package:oshiruco_app/provider/tab_type_provider.dart';
import 'package:oshiruco_app/provider/unread_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/badge.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_event_point.dart';
import 'package:oshiruco_app/widget/screen/communication_screen.dart';
import 'package:oshiruco_app/widget/screen/diary/diary_screen.dart';
import 'package:oshiruco_app/widget/screen/friend/friends_screen.dart';
import 'package:oshiruco_app/widget/screen/group_screen.dart';
import 'package:oshiruco_app/widget/screen/marche_screen.dart';
import 'package:routemaster/routemaster.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appInitializeController =
        ref.watch(applicationInitializeProvider.notifier);
    final groupScreenController = ref.watch(groupScreenProvider.notifier);
    final matchingController = ref.watch(matchingProvider.notifier);
    final unreadController = ref.watch(unreadProvider.notifier);

    useEffect(() {
      final subscriptions = _listenNotification(context, groupScreenController);
      return () async =>
          await Future.wait(subscriptions.map((s) => s.cancel()).toList());
    }, []);

    useEffect(() {
      final observer = _Observer(() async {
        await unreadController.getUnread();
      });
      routemaster.observers.add(observer);

      return () => routemaster.observers.remove(observer);
    }, []);

    final create = useMemoized<Future<void>>(() async {
      try {
        await appInitializeController.checkAndShowProfileEnsureScreen();
        await routemaster.push('/info').result;
        groupScreenController.loadInitialData(context);
        matchingController.fetchInitialData(context);
      } on DeviceChangedException {
        await showErrorDialogWithMessage(
          context,
          'このアカウントは別の端末で使用されています。',
        );

        await appInitializeController.clearData();
        routemaster.replace('/');
      }
    });

    final snapshot = useFuture(create);

    if (snapshot.connectionState != ConnectionState.done) {
      return const Scaffold(
        body: Center(
          child: OshirucoCircleProgressIndicator(),
        ),
      );
    }

    final tabType = ref.watch(tabTypeProvider.notifier);
    final isConciergeButtonVisible = ref.watch(conciergeButtonVisibleProvider);

    final unreadState = ref.watch(unreadProvider);

    final loginBonusPoints = ref.watch(
      applicationInitializeProvider.select(
        (state) => state.information?.info?.loginBonus ?? 0,
      ),
    );
    final _views = [
      const FriendsScreen(),
      const GroupScreen(),
      const CommunicationScreen(),
      const DiaryScreen(),
      const MarcheScreen(),
    ];

    useEffect(() {
      // To aviod Unhandled Exception, use Future.delayed.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // ログインボーナスの表示
        appInitializeController.checkAndShowLoginBonus(
          context,
          points: loginBonusPoints,
        );
      });
      return null;
    }, []);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: OshirucoColors.grey,
        selectedItemColor: OshirucoColors.text,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.tab.friendOff.svg(
              height: 24,
            ),
            activeIcon: Assets.icons.tab.friendOn.svg(
              height: 24,
            ),
            label: '仲間',
          ),
          BottomNavigationBarItem(
            icon: _iconWithBadge(
              badgeNumber: unreadState.groupChat,
              icon: Assets.icons.tab.groupOff,
            ),
            activeIcon: _iconWithBadge(
              badgeNumber: unreadState.groupChat,
              icon: Assets.icons.tab.groupOn,
            ),
            label: 'グループ',
          ),
          BottomNavigationBarItem(
            icon: _iconWithBadge(
              badgeNumber: unreadState.commucation,
              icon: Assets.icons.tab.chatOff,
            ),
            activeIcon: _iconWithBadge(
              badgeNumber: unreadState.commucation,
              icon: Assets.icons.tab.chatOn,
            ),
            label: 'やりとり',
          ),
          BottomNavigationBarItem(
            icon: _iconWithBadge(
              badgeNumber: unreadState.comment,
              icon: Assets.icons.tab.diaryOff,
            ),
            activeIcon: _iconWithBadge(
              badgeNumber: unreadState.comment,
              icon: Assets.icons.tab.diaryOn,
            ),
            label: '日記',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.tab.marcheOff.svg(
              height: 24,
            ),
            activeIcon: Assets.icons.tab.marcheOn.svg(
              height: 24,
            ),
            label: 'マルシェ',
          ),
        ],
        onTap: (int index) {
          unreadController.getUnread();

          final newTabType = TabType.values[index];
          if (newTabType == TabType.group) {
            groupScreenController.reloadJoinedGroup(context);
          }

          tabType.state = newTabType;
        },
        currentIndex: tabType.state.index,
      ),
      body: _views[tabType.state.index],
      floatingActionButton: Visibility(
        visible: isConciergeButtonVisible,
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            SizedBox(
              height: 64,
              width: 64,
              child: FloatingActionButton(
                backgroundColor: OshirucoColors.green,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Assets.svgs.iconConcierge.svg(),
                ),
                onPressed: () => routemaster.push('/concierge'),
              ),
            ),
            Badge(
              number: unreadState.network,
              size: 28,
              bold: false,
            ),
          ],
        ),
      ),
    );
  }

  List<StreamSubscription<RemoteMessage>> _listenNotification(
    BuildContext context,
    GroupScreenController groupScreenController,
  ) {
    handleMessage(RemoteMessage message) {
      switch (message.data['action']) {
        case 'groupChat':
          groupScreenController.reloadJoinedGroup(context);
          break;
        case 'event':
          final json = jsonDecode("${message.data['json'] ?? '{}'}")
              as Map<String, dynamic>;
          final event = Event.fromJson(json);
          _showEventPoint(context, event);
          break;
      }
    }

    return [
      FirebaseMessaging.onMessageOpenedApp.listen(handleMessage),
      FirebaseMessaging.onMessage.listen(handleMessage),
    ];
  }

  void _showEventPoint(BuildContext context, Event event) {
    if (event.point <= 0) {
      return;
    }

    showEventPoint(
      context,
      subtitle: event.subTitle,
      point: event.point,
    );
  }

  Widget _iconWithBadge({
    required int badgeNumber,
    required SvgGenImage icon,
  }) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon.svg(
              height: 24,
            ),
          ],
        ),
        Positioned(
          top: 0,
          right: 8,
          child: Badge(number: badgeNumber),
        ),
      ],
    );
  }
}

class _Observer extends RoutemasterObserver {
  _Observer(this.onChangeRoute);
  VoidCallback onChangeRoute;

  @override
  void didChangeRoute(RouteData routeData, Page page) {
    onChangeRoute();
  }
}

enum TabType {
  friend,
  group,
  communication,
  diary,
  marche,
}
