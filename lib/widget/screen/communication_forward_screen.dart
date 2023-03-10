import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/model/communication_user/communication_user.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/provider/communication_provider.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';

class CommunicationForwardScreen extends HookWidget {
  final String forwardMessage;
  final String photoPath;
  final List<CommunicationUser> matchedUsers;
  final User copiedUser;
  const CommunicationForwardScreen(
      {required this.forwardMessage,
      required this.matchedUsers,
      required this.photoPath,
      required this.copiedUser,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<CommunicationUser> userList = matchedUsers.sublist(0);
    userList.removeWhere((el) => el.uuid == copiedUser.uuid);
    return Scaffold(
      appBar: oshirucoAppBar(
        title: '転送する',
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => Navigator.of(context).pop()),
        actions: [
          // IconButton(
          //   onPressed: () => '',
          //   icon: const Icon(
          //     Icons.search,
          //     size: 28,
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            if (userList.isEmpty)
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  '転送知る相手がいません。仲間を増やしましょう',
                  style: OshirucoTextStyles.mediumBold,
                ),
              ),
            for (var user in userList)
              UserForwardListItem(user, forwardMessage, photoPath),
          ],
        ),
      ),
    );
  }
}

class UserForwardListItem extends HookConsumerWidget {
  final CommunicationUser _user;
  final String forwardMessage;
  final String photoPath;
  const UserForwardListItem(this._user, this.forwardMessage, this.photoPath,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatSendingController =
        ref.watch(communicationChatSendingProvider.notifier);
    final chatController = ref.watch(communicationChatProvider.notifier);
    final chatRoom = useMemoized(
        () => chatController.getUserChatRoom(context, otherUuid: _user.uuid));
    final sendBtnColor = useState(OshirucoColors.green);

    final snapshot = useFuture(chatRoom);
    if (snapshot == null || snapshot.hasError) {
      return const SizedBox();
    }

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildIcon(),
          const SizedBox(width: 12),
          _buildInfo(),
          IconButton(
            onPressed: () {
              if (sendBtnColor.value == OshirucoColors.green) {
                showAlertConfirmationDialog(
                    context, '確認してください', 'チェックした仲間に同じ内容を送ります。', () {
                  sendBtnColor.value = OshirucoColors.grey;
                  chatSendingController.onTapSendForwardMessage(context,
                      roomId: snapshot.data!.id,
                      otherUserUUID: _user.uuid,
                      message: forwardMessage,
                      imagePath: photoPath);
                }, okBtnLabel: '送信する');
              }
            },
            icon: Icon(
              Icons.send,
              color: sendBtnColor.value,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: OshirucoNetworkImage(
        _user.photoPaths.profilePhoto(),
        type: OshirucoImageType.communication,
        height: 60,
        width: 60,
      ),
    );
  }

  Widget _buildInfo() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            _user.nickname,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              color: OshirucoColors.text,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          _userInfoArea(),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget _userInfoArea() {
    return Row(
      children: [
        Text('おしるこ年齢 ${_user.age.toOshirucoAge()}歳',
            style: OshirucoTextStyles.smallGrey),
        const SizedBox(width: 8),
        Text(_user.gender, style: OshirucoTextStyles.smallGrey),
        const SizedBox(width: 8),
        Text(_user.livePlace, style: OshirucoTextStyles.smallGrey),
      ],
    );
  }
}
