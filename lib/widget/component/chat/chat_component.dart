import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:intl/intl.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/communication_chat/communication_chat.dart';
import 'package:oshiruco_app/model/concierge_chat/concierge_chat.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/group_chat/group_chat.dart';
import 'package:oshiruco_app/model/group_user/group_user.dart';
import 'package:oshiruco_app/model/remote_config/concierge/concierge.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/router.dart';
import 'package:url_launcher/url_launcher.dart';

class ChatComponent extends StatelessWidget {
  const ChatComponent({
    required String avatarPaths,
    required bool isOwnChat,
    required DateTime postedAt,
    required String message,
    required String photoPath,
    required String nickName,
    required Gender gender,
    Function? onMessageLongPress,
    VoidCallback? onTapAvatar,
    Key? key,
  })  : _avatarPaths = avatarPaths,
        _isOwnChat = isOwnChat,
        _postedAt = postedAt,
        _message = message,
        _photoPath = photoPath,
        _nickname = nickName,
        _gender = gender,
        _onMessageLongPress = onMessageLongPress,
        _onTapAvatar = onTapAvatar,
        super(key: key);

  ChatComponent.fromGroup({
    required GroupChat chat,
    required GroupUser user,
    Key? key,
  }) : this(
          avatarPaths: 'user/${user.photoPaths}',
          isOwnChat: chat.isOwnChat,
          postedAt: chat.postedAt,
          message: chat.message,
          photoPath: chat.photoPath,
          nickName: user.nickname,
          gender: GenderExtension.fromString(user.gender),
          onTapAvatar: () => routemaster.push(user.uuid),
          onMessageLongPress: () => '',
          key: key,
        );

  ChatComponent.fromCommunication({
    required CommunicationChat chat,
    required User user,
    required bool isOwnChat,
    required Function onChatLongPressed,
    Key? key,
  }) : this(
          avatarPaths: 'user/${user.photoPaths}',
          isOwnChat: isOwnChat,
          postedAt: chat.postedAt,
          message: chat.message,
          photoPath: chat.photoPath,
          nickName: user.nickname,
          gender: GenderExtension.fromString(user.gender),
          onTapAvatar: () => routemaster.push('detail'),
          onMessageLongPress: onChatLongPressed,
          key: key,
        );

  ChatComponent.fromConcierge({
    required ConciergeChat chat,
    required Concierge concierge,
    required Function onChatLongPressed,
    Key? key,
  }) : this(
          avatarPaths: chat.userStatus ? '' : concierge.iconPath,
          isOwnChat: chat.userStatus,
          postedAt: chat.postedAt,
          message: chat.message,
          photoPath: chat.photoPath,
          nickName: '',
          gender: Gender.female,
          onMessageLongPress: onChatLongPressed,
          key: key,
        );

  final String _avatarPaths;

  final bool _isOwnChat;

  final DateTime _postedAt;

  final String _message;

  final String _photoPath;

  final String _nickname;

  final Gender _gender;

  final Function? _onMessageLongPress;

  final VoidCallback? _onTapAvatar;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.6;
    final avatarPath =
        _avatarPaths.splitPath().isNotEmpty ? _avatarPaths.splitPath()[0] : '';
    final isOwn = _isOwnChat;
    return isOwn
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _postedTime(_postedAt),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onLongPress: () => _onMessageLongPress!(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_message.isNotEmpty)
                          _messageUnit(
                            width: width,
                            isOwn: isOwn,
                          ),
                        if (_photoPath.isNotEmpty)
                          _imageUnit(
                            width: width,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _chatIcon(avatarPath),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _nameUnit(
                      isOwn: isOwn,
                    ),
                    if (_message.isNotEmpty)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _messageUnit(
                            width: width,
                            isOwn: isOwn,
                          ),
                          const SizedBox(width: 4),
                          _postedTime(_postedAt),
                        ],
                      ),
                    if (_photoPath.isNotEmpty)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _imageUnit(
                            width: width,
                          ),
                          const SizedBox(width: 4),
                          _postedTime(_postedAt),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          );
  }

  Widget _postedTime(DateTime postedAt) {
    final dateFormatter = DateFormat('MM/dd');
    final timeFormatter = DateFormat('HH:mm');
    final now = DateTime.now();
    final today = dateFormatter.format(now) == dateFormatter.format(postedAt);
    return Column(
      children: [
        if (!today)
          Text(
            dateFormatter.format(postedAt),
            style: OshirucoTextStyles.smallGrey,
          ),
        Text(
          timeFormatter.format(postedAt),
          style: OshirucoTextStyles.smallGrey,
        ),
      ],
    );
  }

  Widget _chatIcon(String src) {
    if (src.isEmpty) {
      return const SizedBox();
    }
    return GestureDetector(
      onTap: _onTapAvatar,
      child: Container(
        height: 48,
        width: 48,
        padding: const EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            src.toImageUrl(),
            fit: BoxFit.cover,
            errorBuilder: (_, o, s) => _gender.toImage().image(),
          ),
        ),
      ),
    );
  }

  Widget _nameUnit({
    required bool isOwn,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Text(
        _nickname,
        textAlign: isOwn ? TextAlign.end : TextAlign.start,
        style: const TextStyle(
          fontSize: 14,
          color: OshirucoColors.black,
        ),
        overflow: TextOverflow.clip,
      ),
    );
  }

  Widget _messageUnit({
    bool isOwn = false,
    required double width,
  }) {
    return Container(
      constraints: BoxConstraints(minWidth: 0, maxWidth: width),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isOwn ? OshirucoColors.lightGreen : Colors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Linkify(
        onOpen: (link) async {
          await launch(link.url);
        },
        text: _message,
        style: TextStyle(
          color: isOwn ? Colors.white : Colors.black,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _imageUnit({
    required double width,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: SizedBox(
        width: width,
        child: Image.network(
          'user/$_photoPath'.toImageUrl(),
          width: width,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress != null) {
              return Assets.images.emptyOshiruco.image();
            }
            return child;
          },
        ),
      ),
    );
  }
}
