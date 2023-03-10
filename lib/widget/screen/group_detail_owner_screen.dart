import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/group_screen_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';
import 'package:oshiruco_app/widget/component/group_tile.dart';
import 'package:oshiruco_app/widget/component/oshiruco_dialogs.dart';
import 'package:routemaster/routemaster.dart';

class GroupDetailOwnerScreen extends HookConsumerWidget {
  const GroupDetailOwnerScreen({
    required String groupId,
    Key? key,
  })  : _groupId = groupId,
        super(key: key);

  final String _groupId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(groupDetailOwnerScreenProvider.notifier);
    final groupScreenController = ref.watch(groupScreenProvider.notifier);

    useEffect(() {
      final observer = _Observer(() async {
        await controller.loadInitialData(_groupId);
        await groupScreenController.loadInitialData(context);
      });
      routemaster.observers.add(observer);

      return () => routemaster.observers.remove(observer);
    }, []);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        toolbarOpacity: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Assets.icons.arrowBack.image(
              color: Colors.white,
            ),
          ),
          onPressed: () => routemaster.pop(),
        ),
        actions: [
          IconButton(
              icon: Assets.svgs.iconOptionsCircle.svg(width: 50),
              onPressed: () {
                OshirucoDialogs.showStringGroupDialog(
                  context,
                  title: 'グループを編集する',
                  onTap: () async => {
                    await routemaster.pop(),
                    await Future<void>.delayed(
                        const Duration(milliseconds: 500)),
                    routemaster.push('/groups/detail/$_groupId/edit'),
                  },
                );
              }),
        ],
      ),
      body: GroupCompletedCreateBase(
        groupId: _groupId,
      ),
    );
  }
}

class GroupCompletedCreateBase extends HookConsumerWidget {
  const GroupCompletedCreateBase({required String groupId, Key? key})
      : _groupId = groupId,
        super(key: key);

  final String _groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(groupDetailOwnerScreenProvider.notifier);
    final ownUuid = ref.watch(uuidProvider);
    final create = useMemoized(
      () => controller.loadInitialData(_groupId),
    );
    final snapshot = useFuture(create);
    if (snapshot.error != null) {
      return const Center(
        child: Text('通信エラーが発生しました'),
      );
    } else if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }
    final state = ref.watch(groupDetailOwnerScreenProvider);
    final group = state.group;
    if (group == null) {
      return const SizedBox();
    }
    final users = state.groupUsers;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            group.icon.toImageUrl(),
            errorBuilder: (_, exception, stacktrace) =>
                Assets.images.empty.image(),
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  group.categoryName,
                  style: OshirucoTextStyles.mediumBold,
                ),
                const SizedBox(height: 10),
                Text(
                  group.name,
                  style: OshirucoTextStyles.largeBold,
                ),
                const SizedBox(height: 10),
                Text(
                  group.intro,
                  style: OshirucoTextStyles.mediumBold,
                )
              ],
            ),
          ),
          Container(
            color: OshirucoColors.bgGreyDark,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: GreenRoundButton(
                'グループチャットに入る',
                controller.enterGroupChat,
                true,
                unread: group.unread,
              ),
            ),
          ),
          Container(
            color: OshirucoColors.bgGreyDark,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.person),
                Text('参加人数 ${group.userCount}人'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GridView.builder(
              padding: EdgeInsets.zero,
              primary: true,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 10 / 14,
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) {
                if (users.isEmpty) {
                  return const SizedBox();
                }
                final user = users[index];
                return GroupTile.fromUser(
                  user,
                  isOwn: ownUuid == user.uuid,
                );
              },
              itemCount: users.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _Observer extends RoutemasterObserver {
  _Observer(this.onPop);
  VoidCallback onPop;

  @override
  void didPop(Route route, Route? previousRoute) {
    onPop();
  }
}
