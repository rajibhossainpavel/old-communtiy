import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/provider/communication_provider.dart';

class CommunicationChatSendingComponent extends HookConsumerWidget {
  const CommunicationChatSendingComponent({
    Key? key,
    required String roomId,
    required String otherUserUUID,
  })  : _roomId = roomId,
        _otherUserUUID = otherUserUUID,
        super(key: key);

  final String _roomId;
  final String _otherUserUUID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(communicationChatSendingProvider.notifier);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              iconSize: 40,
              icon: const Icon(
                Icons.photo_size_select_actual_outlined,
                color: OshirucoColors.lightGreen,
              ),
              onPressed: () async {
                final result = await controller.onTapSelectImage(
                  context,
                  roomId: _roomId,
                );
                if (result) {
                  await controller.onTapSendMessage(
                    context,
                    roomId: _roomId,
                    otherUserUUID: _otherUserUUID,
                  );
                }
              }),
          Expanded(
            child: TextFormField(
              controller: controller.textController,
              minLines: 1,
              maxLines: 3,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: OshirucoColors.gbGrey,
                    width: 3.0,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 9),
                hintText: 'メッセージを入力',
              ),
            ),
          ),
          IconButton(
            iconSize: 35,
            icon: const Icon(
              Icons.send,
              color: OshirucoColors.lightGreen,
            ),
            onPressed: () => controller.onTapSendMessage(
              context,
              roomId: _roomId,
              otherUserUUID: _otherUserUUID,
            ),
          ),
        ],
      ),
    );
  }
}
