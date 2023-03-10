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
import 'package:oshiruco_app/widget/component/green_round_button.dart';
import 'package:oshiruco_app/widget/component/group_tile.dart';
import 'package:oshiruco_app/widget/component/oshiruco_dialogs.dart';

class GroupDetailScreen extends HookConsumerWidget {
  const GroupDetailScreen({required this.groupId, Key? key}) : super(key: key);

  final String groupId;

  static const String isOwnerKey = 'is_owner';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(groupDetailScreenProvider);
    final controller = ref.watch(groupDetailScreenProvider.notifier);

    useEffect(() {
      controller.loadInitialData(groupId);
    }, [groupId]);

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
          onPressed: () {
            if (!state.isLoading) {
              Navigator.of(context).pop();
            }
          },
        ),
        actions: [
          if (state.isJoined)
            IconButton(
              icon: Assets.svgs.iconOptionsCircle.svg(width: 50),
              onPressed: () => OshirucoDialogs.showStringGroupDialog(
                context,
                title: 'グループを退会する',
                onTap: () => controller.leaveGroup(groupId),
              ),
            ),
        ],
      ),
      body: GroupDetailBase(
        groupId: groupId,
      ),
    );
  }
}

class GroupDetailBase extends HookConsumerWidget {
  const GroupDetailBase({required this.groupId, Key? key}) : super(key: key);
  final String groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(groupDetailScreenProvider.notifier);
    final groupController = ref.watch(groupScreenProvider.notifier);
    final state = ref.watch(groupDetailScreenProvider);
    final ownUuid = ref.watch(uuidProvider);
    final create = useMemoized(
      () => controller.loadInitialData(groupId),
    );

    final snapshot = useFuture(create);
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: OshirucoCircleProgressIndicator());
    }

    final group = state.group;
    final users = state.users;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            (state.group?.icon ?? '').toImageUrl(),
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
                  group?.categoryName ?? '',
                  style: OshirucoTextStyles.mediumBold,
                ),
                const SizedBox(height: 10),
                Text(
                  group?.name ?? '',
                  style: OshirucoTextStyles.largeBold,
                ),
                const SizedBox(height: 10),
                Text(
                  group?.intro ?? '',
                  style: OshirucoTextStyles.mediumBold,
                )
              ],
            ),
          ),
          Container(
            color: OshirucoColors.bgGreyDark,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: state.group?.blocked ?? false
                  ? GreenRoundButton(
                      '加入できません',
                      () {},
                      false,
                      color: OshirucoColors.grey,
                    )
                  : state.isJoined
                      ? GreenRoundButton(
                          'グループチャットに入る',
                          controller.enterGroupChat,
                          true,
                          unread: group?.unread ?? 0,
                          isLoading: state.isLoading,
                        )
                      : GreenRoundButton(
                          'グループに参加する',
                          () {
                            controller.joinedGroup(context, groupId, ownUuid);
                            groupController.joinedNewGroup(group);
                          },
                          true,
                          isLoading: state.isLoading,
                        ),
            ),
          ),
          if (state.group?.blocked != true) ...[
            Container(
              color: OshirucoColors.bgGreyDark,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.person),
                  Text('参加人数 ${group?.userCount ?? 0}人'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                primary: true,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 10 / 14,
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
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
        ],
      ),
    );
  }
}
