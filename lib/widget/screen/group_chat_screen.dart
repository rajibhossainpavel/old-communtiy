import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/group_user/group_user.dart';
import 'package:oshiruco_app/provider/group_screen_provider.dart';
import 'package:oshiruco_app/widget/component/chat/chat_component.dart';
import 'package:oshiruco_app/widget/component/chat/group_chat_sending_component.dart';
import 'package:oshiruco_app/widget/component/chat/new_message_bar.dart';

class GroupChatScreen extends HookConsumerWidget {
  const GroupChatScreen({required String groupId, Key? key})
      : _groupId = groupId,
        super(key: key);

  final String _groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final group = ref.watch(groupChatProvider.select((state) => state.group));
    final chatController = ref.watch(groupChatSendingProvider.notifier);
    final groupChatController = ref.watch(groupChatProvider.notifier);
    final groupScreenController = ref.watch(groupScreenProvider.notifier);
    final groupDetailScreenController =
        ref.watch(groupDetailScreenProvider.notifier);

    return GestureDetector(
      onTap: () => chatController.unFocusFormKeyboard(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            group?.name ?? '',
          ),
          leading: IconButton(
            icon: Assets.icons.arrowBack.image(color: Colors.white),
            onPressed: () async {
              // 既読したことを知らせる
              final groupId = group?.id;
              if (groupId != null) {
                await groupChatController.groupChatRead(groupId);

                // 未読badgeの更新
                await groupDetailScreenController.loadInitialData(groupId);
              }

              // 未読badgeの更新
              await groupScreenController.loadInitialData(context);

              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
          color: OshirucoColors.gbGrey,
          child: GroupChatScreenBase(
            groupId: _groupId,
          ),
        ),
      ),
    );
  }
}

class GroupChatScreenBase extends HookConsumerWidget {
  const GroupChatScreenBase({required String groupId, Key? key})
      : _groupId = groupId,
        super(key: key);

  final String _groupId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(groupChatProvider.notifier);
    final create = useMemoized(
      () => controller.loadInitialData(context, groupId: _groupId),
    );
    final snapshot = useFuture(create);
    final state = ref.watch(groupChatProvider);
    if (snapshot.error != null) {
      return const SizedBox();
    }

    return Stack(children: [
      Column(
        children: [
          Expanded(
            child: ListView.separated(
              controller: controller.scrollController,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              reverse: true,
              separatorBuilder: (_, index) {
                if (state.lastLatestChat != null &&
                    state.lastLatestChat == state.chats[index] &&
                    index != 0) {
                  return const NewMessageBar();
                }
                return const SizedBox(
                  height: 20,
                );
              },
              itemCount: state.chats.length,
              itemBuilder: (context, index) {
                final chat = state.chats[index];
                return ChatComponent.fromGroup(
                  chat: chat,
                  user:
                      state.uuidUsersMapper[chat.uuid] ?? GroupUser.leaveUser(),
                );
              },
            ),
          ),
          GroupChatSendingComponent(
            state.group?.id ?? '',
            isOwner: state.group?.isOwner ?? false,
          ),
        ],
      ),
      if (snapshot.connectionState == ConnectionState.waiting ||
          state.isLoading)
        Positioned.fill(
          child: Container(
            color: OshirucoColors.gbGrey,
            alignment: Alignment.center,
            child: const OshirucoCircleProgressIndicator(),
          ),
        )
    ]);
  }
}
