import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/date_extension.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/communication_user/communication_user.dart';
import 'package:oshiruco_app/model/dating_chat_room/dating_chat_room.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';

class CommunicationTile extends StatelessWidget {
  const CommunicationTile(
    this._user, {
    required String text,
    required Color textColor,
    required VoidCallback onTap,
    bool isInitialState = false,
    bool hasRead = true,
    bool isMatched = false,
    DateTime? recentPosted,
    AssetGenImage? icon,
    bool isLikeTo = false,
    String? likeToMessage,
    Key? key,
  })  : _text = text,
        _textColor = textColor,
        _icon = icon,
        _onTap = onTap,
        _isInitialState = isInitialState,
        _hasRead = hasRead,
        _recentPosted = recentPosted,
        _isMatched = isMatched,
        _isLikeTo = isLikeTo,
        _likeToMessage = likeToMessage,
        super(key: key);

  CommunicationTile.fromMessage({
    required CommunicationUser user,
    DatingChatRoom? room,
    Key? key,
  }) : this(
          user,
          text: room?.recentMessage.isEmpty ?? true
              ? 'メッセージを送ってみましょう'
              : room?.recentMessage ?? '',
          textColor: room?.recentMessage.isEmpty ?? true
              ? OshirucoColors.textRed
              : Colors.black,
          onTap: () => routemaster.push('/communication/chat/${user.uuid}'),
          isInitialState: room?.initialState ?? false,
          hasRead: room?.membersData
                  .firstWhere((member) => member.uuid != user.uuid)
                  .readState ??
              false,
          isMatched: true,
          recentPosted: room?.recentPosted,
          key: key,
        );

  CommunicationTile.fromLikeTo({
    required CommunicationUser user,
    Key? key,
  }) : this(
          user,
          text: user.isMatched ? 'おしるこ仲間になりました' : '挨拶ありがとうを待ちましょう',
          textColor:
              user.isMatched ? OshirucoColors.textRed : OshirucoColors.text,
          icon: Assets.images.bgToLike,
          isLikeTo: true,
          likeToMessage: user.message,
          onTap: () => routemaster.push('/communication/detail/${user.uuid}'),
          key: key,
        );

  CommunicationTile.fromLikeFrom({
    required CommunicationUser user,
    Key? key,
  }) : this(
          user,
          // text: user.isMatched ? 'おしるこ仲間になりました' : '挨拶ありがとうを返しましょう',
          text: user.message,
          textColor:
              user.isMatched ? OshirucoColors.textRed : OshirucoColors.text,
          icon: Assets.images.bgFromLike,
          onTap: () => routemaster.push('/communication/detail/${user.uuid}'),
          key: key,
        );

  final CommunicationUser _user;

  final AssetGenImage? _icon;

  final String _text;

  final Color _textColor;

  final VoidCallback _onTap;

  final bool _isMatched;

  /// newのbadgeを表示するか
  final bool _isInitialState;

  /// 既読したか
  final bool _hasRead;

  final DateTime? _recentPosted;

  final bool _isLikeTo;

  final String? _likeToMessage;

  @override
  Widget build(BuildContext context) {
    final icon = _icon;
    return InkWell(
      onTap: _onTap,
      child: Ink(
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 10),
              child: Column(
                children: <Widget>[
                  if (_isMatched) _buildTime() else const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildIcon(),
                      const SizedBox(width: 12),
                      _buildInfo(),
                    ],
                  ),
                ],
              ),
            ),
            if (_isInitialState)
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 40,
                  child: Assets.images.badgeNew.image(),
                ),
              ),
            if (!_hasRead)
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 40,
                  child: Assets.images.badgeUnread.image(),
                ),
              ),
            if (icon != null)
              Positioned(
                right: 0,
                bottom: 0,
                child: SizedBox(
                  width: 70,
                  child: icon.image(),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTime() {
    return Row(
      children: <Widget>[
        const Spacer(),
        Text(
          _recentPosted?.yyyymmddhhmm() ?? '',
          textAlign: TextAlign.right,
          style: const TextStyle(fontSize: 14),
        ),
      ],
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
          const SizedBox(height: 6),
          Visibility(
            visible: _isLikeTo,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Text(
                _likeToMessage ?? '',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: OshirucoColors.text,
                ),
              ),
            ),
          ),
          Text(
            _text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: _textColor,
            ),
          ),
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
