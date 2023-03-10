import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/client/remote_config/config.dart';
import 'package:oshiruco_app/controller/diary_controller.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/model/remote_config/banner/banner.dart'
    as rc_banner;
import 'package:oshiruco_app/provider/diary_provider.dart';
import 'package:oshiruco_app/provider/unread_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/badge.dart';
import 'package:oshiruco_app/widget/component/banner_view.dart';
import 'package:oshiruco_app/widget/component/diary_cell.dart';
import 'package:oshiruco_app/widget/sliver_persistent_header_tab_bar_delegate.dart';

class DiaryScreen extends HookConsumerWidget {
  const DiaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabsTitle = ['新着', '仲間の日記'];
    final tabController = useTabController(initialLength: tabsTitle.length);

    final banner = Config.getBanner(rc_banner.BannerPlace.diaries);
    final controller = ref.watch(diaryProvider.notifier);
    final unreadState = ref.watch(unreadProvider);

    useEffect(() {
      tabController.addListener(() {
        if (tabController.index == 1) {
          controller.loadDiaryIfNeeded(context, DiaryTab.matched);
        }
      });
    });

    return Scaffold(
      body: NestedScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: false,
              pinned: true,
              actions: [
                IconButton(
                  onPressed: () => controller.onTapMyDiary(),
                  icon: _iconWithBadge(
                    icon: Assets.icons.myDiary,
                    badgeNumber: unreadState.comment,
                  ),
                ),
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
                  '日記',
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
            _tabBar(tabsTitle, tabController)
          ];
        },
        body: _body(context, tabController, ref),
      ),
      floatingActionButton: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Positioned(
            bottom: 64 + 8, // (floatingActionButton size + padding),
            child: SizedBox(
              height: 64,
              width: 64,
              child: FloatingActionButton(
                heroTag: "create-diary",
                onPressed: () => routemaster.push('/diary/create'),
                backgroundColor: OshirucoColors.green,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Assets.svgs.iconAddDiary.svg(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SliverPersistentHeader _tabBar(
      List<String> tabsTitle, TabController tabController) {
    return SliverPersistentHeader(
      delegate: SliverPersistentHeaderTabBarDelegate(
        tabBar: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 3,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          //For Selected tab
          unselectedLabelStyle: const TextStyle(),
          tabs: tabsTitle
              .map(
                (title) => SizedBox(
                  height: 22,
                  child: Text(
                    title,
                    style: OshirucoTextStyles.medium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
              .toList(),
          controller: tabController,
          labelPadding: const EdgeInsets.all(12),
        ),
      ),
      pinned: true,
    );
  }

  Widget _body(
      BuildContext context, TabController tabController, WidgetRef ref) {
    final controller = ref.watch(diaryProvider.notifier);
    final create = useMemoized(
      () => controller.loadInitialData(context),
    );
    final snapshot = useFuture(create);

    if (snapshot.hasError) {
      return const Center(
        child: Text(
          'エラーが発生しました。',
          style: OshirucoTextStyles.large,
        ),
      );
    }

    if (snapshot.connectionState != ConnectionState.done) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }

    return TabBarView(
      controller: tabController,
      children: const [
        _Diaries(tab: DiaryTab.recent),
        _Diaries(tab: DiaryTab.matched),
      ],
    );
  }

  Widget _iconWithBadge({
    required int badgeNumber,
    required AssetGenImage icon,
  }) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: icon.image(
            width: 28,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Badge(number: badgeNumber, size: 20),
        ),
      ],
    );
  }
}

class _Diaries extends HookConsumerWidget {
  final DiaryTab tab;

  const _Diaries({Key? key, required this.tab}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(diaryProvider.notifier);
    final state = ref.watch(diaryProvider);
    final diaries = _getDiariesFromTab(ref, tab);

    if (controller.isLoadingFromDiaryTab(tab)) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }
    if (diaries.isEmpty) {
      return tab == DiaryTab.recent
          ? const Center(
              child: OshirucoCircleProgressIndicator(),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 80),
                Assets.images.launchedOnlyFriendsDiary.image(width: 300),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    '今まで、全員に公開されていた日記ですが、仲間だけが読める日記機能が登場しました！仲間をたくさん増やして、限定日記をチェックしましょう！',
                  ),
                )
              ],
            );
    }

    final hasNext = controller.hasNextFromDiaryTab(tab);
    return RefreshIndicator(
      onRefresh: () async {
        controller.refreshDiaryWithTab(context, tab);
      },
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          if (index == diaries.length && hasNext) {
            controller.onReachBottom(tab);

            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: OshirucoCircleProgressIndicator(),
              ),
            );
          }

          final diary = diaries[index];
          return DiaryCell(
            diary: diary,
            isOwn: state.uuid == diary.user?.uuid,
            onTapSmile: () => controller.onTapSmile(context, diary),
            onTapComment: () => controller.onTapComment(diary),
            onTapUser: () => controller.onTapUser(diary),
          );
        },
        itemCount: diaries.length + (hasNext ? 1 : 0), // 末尾にくるくるを表示するため+1する
      ),
    );
  }

  List<Diary> _getDiariesFromTab(WidgetRef ref, DiaryTab tab) {
    final state = ref.watch(diaryProvider);
    return tab == DiaryTab.recent ? state.recentDiaries : state.matchedDiaries;
  }
}
