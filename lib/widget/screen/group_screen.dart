import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/client/remote_config/config.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/group/group.dart';
import 'package:oshiruco_app/model/group_category/group_category.dart';
import 'package:oshiruco_app/model/remote_config/banner/banner.dart'
    as rc_banner;
import 'package:oshiruco_app/provider/group_screen_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/banner_view.dart';
import 'package:oshiruco_app/widget/component/category_tile.dart';
import 'package:oshiruco_app/widget/component/group_tile.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';
import 'package:oshiruco_app/widget/component/sliver_appbar_delegate.dart';

class GroupScreen extends HookConsumerWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(groupScreenProvider.notifier);
    final tabController = useTabController(initialLength: 2, initialIndex: 0);
    final banner = Config.getBanner(rc_banner.BannerPlace.groups);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: false,
              pinned: true,
              actions: [
                IconButton(
                  onPressed: () => controller.onTapCreateGroup(context),
                  icon: const Icon(
                    Icons.add_outlined,
                    size: 28,
                    color: Colors.white,
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
                  'グループ',
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
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  //For Selected tab

                  controller: tabController,
                  tabs: const [
                    Tab(text: '参加中'),
                    Tab(text: 'グループを探す'),
                  ],
                ),
              ),
            ),
          ];
        },
        body: GroupScreenBase(
          tabController: tabController,
        ),
      ),
    );
  }
}

class GroupScreenBase extends HookConsumerWidget {
  const GroupScreenBase({
    required TabController tabController,
    Key? key,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(groupScreenProvider.notifier);
    final groupScreenState = ref.watch(groupScreenProvider);
    final joinedGroups = groupScreenState.joinedGroups;
    final isLoading = groupScreenState.isLoading;
    return TabBarView(
      controller: _tabController,
      children: [
        if (joinedGroups.isEmpty && !isLoading)
          const EmptyJoinedGroupTab()
        else
          JoinedGroupList(
            isLoading: isLoading,
            groups: joinedGroups,
            onRefresh: () => controller.loadInitialData(context),
          ),
        SearchGroupTab(isLoading: isLoading),
      ],
    );
  }
}

class EmptyJoinedGroupTab extends StatelessWidget {
  const EmptyJoinedGroupTab({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: OshirucoColors.gbGrey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 12),
          Assets.images.noDataGroup.image(),
          const Text(
            'まだグループに参加していません',
            style: OshirucoTextStyles.mediumGreenLightBold,
          ),
          const SizedBox(
            height: 22,
          ),
          const Text(
            'グループに参加するとチャットが利用できます',
            style: OshirucoTextStyles.medium,
          ),
        ],
      ),
    );
  }
}

class JoinedGroupList extends StatelessWidget {
  const JoinedGroupList({
    required this.isLoading,
    required this.groups,
    required this.onRefresh,
    Key? key,
  }) : super(key: key);

  final bool isLoading;
  final List<Group> groups;

  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return isLoading || groups.isEmpty
        ? const Center(child: OshirucoCircleProgressIndicator())
        : Container(
            padding: const EdgeInsets.all(12),
            color: Colors.white,
            child: RefreshIndicator(
              onRefresh: () async {
                onRefresh();
              },
              child: GridView.builder(
                primary: true,
                padding: EdgeInsets.zero,
                shrinkWrap: false,
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 10 / 14,
                  crossAxisCount: 3,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                ),
                itemBuilder: (context, index) => GroupTile.fromGroup(
                  groups[index],
                  isShowBadge: true,
                ),
                itemCount: groups.length,
              ),
            ),
          );
  }
}

class SearchGroupTab extends HookConsumerWidget {
  const SearchGroupTab({
    required this.isLoading,
    Key? key,
  }) : super(key: key);
  final bool isLoading;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupController = ref.watch(groupScreenProvider.notifier);
    final categoryScreenController =
        ref.watch(groupCategoryScreenProvider.notifier);
    final groupState = ref.watch(groupScreenProvider);
    final categories = groupState.categories;
    final newArrivalGroups = groupState.newArrivalGroups;
    final popularGroups = groupState.popularGroups;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => groupController.loadInitialData(context),
              child: CustomScrollView(
                physics: const ClampingScrollPhysics(),
                slivers: <Widget>[
                  ..._groupUnit(popularGroups, '人気グループ', width),
                  ..._groupUnit(newArrivalGroups, '新着グループ', width),
                  _categoryUnit(
                      categories: categories,
                      width: width,
                      onTap: (category) {
                        categoryScreenController.setGroupCategory(category);
                        groupController.onTapCategory();
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _groupUnit(
    List<Group> groups,
    String title,
    double width,
  ) {
    final targetLength = groups.length < 15 ? groups.length : 15;
    return [
      SliverList(
        delegate: SliverChildListDelegate(
          [
            Container(
              width: width,
              color: OshirucoColors.bgGreyDark,
              padding: const EdgeInsets.fromLTRB(12, 20, 12, 16),
              child: Text(
                title,
                style: OshirucoTextStyles.medium,
              ),
            ),
          ],
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.all(12.0),
        sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 10 / 14,
            crossAxisCount: 3,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
          ),
          delegate: SliverChildListDelegate(
            groups
                .sublist(0, targetLength)
                .map((Group group) => GroupTile.fromGroup(group))
                .toList(),
          ),
        ),
      ),
    ];
  }

  Widget _categoryUnit({
    required List<GroupCategory> categories,
    required double width,
    required Function(GroupCategory) onTap,
  }) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            width: width,
            color: OshirucoColors.bgGreyDark,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 15),
            child: const Text(
              'カテゴリーから探す',
              style: OshirucoTextStyles.medium,
            ),
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final category = categories[index];
              return CategoryTile(
                onTap: () => onTap(category),
                title: '${category.name} (${category.groupCount})',
              );
            },
            separatorBuilder: (_, __) => const OshirucoDivider(),
            itemCount: categories.length,
          ),
        ],
      ),
    );
  }
}
