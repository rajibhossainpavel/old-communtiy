import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';

// TODO(qkuronekop): groupChatSending,Componentなどと共通化する。
class ChatSendingComponent extends StatelessWidget {
  const ChatSendingComponent(
      {required Function(BuildContext) onTapSelectImage,
      required Function(String) onTapSendMessage,
      Key? key})
      : _onTapSelectImage = onTapSelectImage,
        _onTapSendMessage = onTapSendMessage,
        super(key: key);

  final Function(BuildContext) _onTapSelectImage;

  final Function(String) _onTapSendMessage;

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
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
            onPressed: () => _onTapSelectImage(context),
            // controller.onTapSelectImage(context, groupId: _groupId),
          ),
          Expanded(
            child: TextFormField(
              controller: textController,
              minLines: 1,
              maxLines: 3,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: OshirucoColors.grey, width: 1.0),
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
            onPressed: () {
              final text = textController.value.text.trim();
              if (text.isEmpty) {
                return;
              }
              _onTapSendMessage(text);
              textController.clear();
            },
          ),
        ],
      ),
    );
  }
}
