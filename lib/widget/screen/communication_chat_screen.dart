import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/communication_chat/communication_chat.dart';
import 'package:oshiruco_app/provider/communication_provider.dart';
import 'package:oshiruco_app/widget/component/chat/chat_component.dart';
import 'package:oshiruco_app/widget/component/chat/communication_chat_sending_component.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';
import 'package:oshiruco_app/widget/screen/communication_forward_screen.dart';
import 'package:oshiruco_app/widget/screen/loading_screen.dart';

class CommunicationChatScreen extends HookConsumerWidget {
  const CommunicationChatScreen(
    this._uuid, {
    Key? key,
  }) : super(key: key);

  final String _uuid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatController = ref.watch(communicationChatProvider.notifier);
    final create = useMemoized(
      () => chatController.loadInitialData(context, otherUuid: _uuid),
    );
    final snapshot = useFuture(create);
    if (snapshot == null || snapshot.hasError) {
      return const Scaffold();
    }

    final isLoading = snapshot.connectionState != ConnectionState.done;

    final chatState = ref.watch(communicationChatProvider);
    return Scaffold(
      appBar: oshirucoAppBar(
        title: chatState.otherUser?.nickname ?? '',
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () async {
              await chatController.onPopChatRoom();
              Navigator.of(context).pop();
            }),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(36),
              child: OshirucoNetworkImage(
                chatState.otherUser?.photoPaths.split(':').first ?? '',
                type: OshirucoImageType.user,
                height: 36,
                width: 36,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: OshirucoColors.background,
        child: isLoading ? const LoadingScreen() : const GroupChatScreenBase(),
      ),
    );
  }
}

class GroupChatScreenBase extends HookConsumerWidget {
  const GroupChatScreenBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(communicationChatProvider.notifier);
    final communicationState = ref.watch(communicationChatProvider);
    final chatSendingController =
        ref.watch(communicationChatSendingProvider.notifier);
    final chats = communicationState.chats;
    final otherUser = communicationState.otherUser!;
    final ownUser = communicationState.ownUser!;
    final userThreadState = ref.watch(communicationProvider);
    return Column(
      children: [
        if (chats.isEmpty)
          Expanded(
            child: _emptyMessage(
              width: MediaQuery.of(context).size.width,
            ),
          )
        else ...[
          Expanded(
            child: GestureDetector(
              onTap: () => chatSendingController.unFocusFormKeyboard(context),
              child: ListView.separated(
                controller: controller.scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                reverse: true,
                itemBuilder: (context, index) {
                  final isOwnChat = chats[index].uuid == ownUser.uuid;
                  CommunicationChat chat = chats[index];
                  return ChatComponent.fromCommunication(
                    chat: chat,
                    user: isOwnChat ? ownUser : otherUser,
                    isOwnChat: isOwnChat,
                    onChatLongPressed: () {
                      showCustomPopUpDialog(context, [
                        Visibility(
                          visible: chat.photoPath.isEmpty,
                          child: ListTile(
                            onTap: () {
                              Clipboard.setData(
                                  ClipboardData(text: chat.message));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('コピーされたテキスト'),
                                duration: Duration(milliseconds: 800),
                              ));
                              Navigator.pop(context);
                            },
                            title: const Text('コピーする'),
                          ),
                        ),
                        ListTile(
                          onTap: () async {
                            Navigator.pop(context);
                            Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CommunicationForwardScreen(
                                  forwardMessage: chat.message,
                                  photoPath: chat.photoPath,
                                  matchedUsers: userThreadState.matchedUsers,
                                  copiedUser: otherUser,
                                ),
                              ),
                            );
                          },
                          title: const Text('転送する'),
                        ),
                      ]);
                    },
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 18,
                ),
                itemCount: chats.length,
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
        CommunicationChatSendingComponent(
          roomId: communicationState.room?.id ?? '',
          otherUserUUID: otherUser.uuid,
        ),
      ],
    );
  }
}

Widget _emptyMessage({required double width}) {
  return Column(
    children: [
      const Spacer(flex: 2),
      Assets.images.noDataMessage.image(
        height: width / 3,
        width: width / 3,
      ),
      const Spacer(flex: 1),
      const Text(
        'まだメッセージがありません',
        style: OshirucoTextStyles.mediumGreenBold,
        textAlign: TextAlign.center,
      ),
      const Spacer(flex: 2),
      const Text(
        'メッセージを送ってみましょう。',
        style: OshirucoTextStyles.medium,
        textAlign: TextAlign.center,
      ),
      const Spacer(flex: 8),
    ],
  );
}
