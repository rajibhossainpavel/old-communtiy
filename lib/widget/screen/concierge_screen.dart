import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/client/s3_client/s3_upload_helper.dart';
import 'package:oshiruco_app/controller/unread_controller.dart';
import 'package:oshiruco_app/model/concierge_chat/concierge_chat.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/concierge_provider.dart';
import 'package:oshiruco_app/provider/unread_provider.dart';
import 'package:oshiruco_app/widget/component/chat/chat_component.dart';
import 'package:oshiruco_app/widget/component/chat/chat_sending_component.dart';

class ConciergeScreen extends HookConsumerWidget {
  const ConciergeScreen({Key? key, required this.type}) : super(key: key);
  final MessageType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(conciergeProvider(type).notifier);
    final state = ref.watch(conciergeProvider(type));
    final unreadController = ref.watch(unreadProvider.notifier);

    useEffect(() {
      unreadController.markAsRead(UnreadKind.network);
    }, []);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'おしるこコンシェルジュ',
          style: OshirucoTextStyles.largeWhite,
        ),
        // TODO(qkuronekop): あとで実装
        // actions: [
        //   IconButton(
        //     onPressed: () async {},
        //     icon: const Icon(
        //       Icons.more_vert,
        //       color: Colors.white,
        //     ),
        //   ),
        // ],
        leading: IconButton(
          onPressed: state.isPopped
              ? null
              : () async {
                  await controller.onTapPop();
                  Navigator.of(context).pop();
                },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: ConciergeScreenBase(type: type),
    );
  }
}

class ConciergeScreenBase extends HookConsumerWidget {
  const ConciergeScreenBase({Key? key, required this.type}) : super(key: key);

  final MessageType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(conciergeProvider(type).notifier);
    final appController = ref.watch(appProvider.notifier);
    useEffect(() {
      // 画面を描画時と
      appController.updateConciergeChatTimestamp(
        DateTime.now().millisecondsSinceEpoch,
      );
      return () {
        // dispose時にtimestampを更新する。
        appController.updateConciergeChatTimestamp(
          DateTime.now().millisecondsSinceEpoch,
        );
      };
    }, []);
    final create = useMemoized(
      () => controller.loadInitialData(),
    );
    final snapshot = useFuture(create);
    if (snapshot.hasError) {
      return const Center(
        child: Text('通信エラーが発生しました。'),
      );
    }

    if (snapshot.connectionState != ConnectionState.done) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final state = ref.watch(conciergeProvider(type));

    void _editMessageField(
        BuildContext context, ConciergeChat chat, int index) {
      final textController = TextEditingController();
      textController.text = chat.message;

      return showCustomPopUpDialog(context, [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: OshirucoColors.green),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                onChanged: (value) {
                  if (value.isEmpty) Navigator.pop(context);
                },
                controller: textController,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () {
                var newChat = ConciergeChat(
                    id: chat.id,
                    photoPath: chat.photoPath,
                    postedAt: chat.postedAt,
                    roomID: chat.roomID,
                    message: textController.text.trim(),
                    readState: chat.readState,
                    userStatus: chat.userStatus);
                controller.onPressedEditMessage(newChat, index);
                Navigator.pop(context);
              },
              child: const Text(
                'アップデート',
                style: OshirucoTextStyles.mediumGreenBold,
              ),
            ),
          ],
        ),
      ]);
    }

    return Container(
      color: OshirucoColors.background,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              controller: controller.scrollController,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              reverse: true,
              separatorBuilder: (_, index) {
                if (state.isLoading && index == state.chats.length - 1) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return const SizedBox(
                  height: 20,
                );
              },
              physics:
                  state.isLoading ? const NeverScrollableScrollPhysics() : null,
              itemCount: state.chats.length,
              itemBuilder: (context, index) {
                final chat = state.chats[index];
                return ChatComponent.fromConcierge(
                  chat: chat,
                  concierge: state.concierge!,
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
                      Visibility(
                        visible: chat.photoPath.isEmpty &&
                            DateTime.now().isBefore(
                                chat.postedAt.add(const Duration(minutes: 2))),
                        child: ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            _editMessageField(context, chat, index);
                          },
                          title: const Text('編集する'),
                        ),
                      ),
                      Visibility(
                        visible: DateTime.now().isBefore(
                            chat.postedAt.add(const Duration(minutes: 2))),
                        child: ListTile(
                          onTap: () async {
                            controller.onTapDeleteMessage(chat.id, index);
                            if (chat.photoPath.isNotEmpty) {
                              S3UploadHelper()
                                  .delete(photoPath: chat.photoPath);
                            }
                            Navigator.pop(context);
                          },
                          title: const Text('削除する'),
                        ),
                      ),
                    ]);
                  },
                );
              },
            ),
          ),
          ChatSendingComponent(
            onTapSelectImage: controller.onTapSendImage,
            onTapSendMessage: controller.onTapSendMessage,
          ),
        ],
      ),
    );
  }
}

enum MessageType {
  none,
  azuki,
  restore,
  close,
}
