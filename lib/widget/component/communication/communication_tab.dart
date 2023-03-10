import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/model/communication_user/communication_user.dart';
import 'package:oshiruco_app/model/dating_chat_room/dating_chat_room.dart';
import 'package:oshiruco_app/model/enum/communication_tab_type.dart';
import 'package:oshiruco_app/provider/communication_provider.dart';
import 'package:oshiruco_app/widget/component/communication/communication_tile.dart';
import 'package:oshiruco_app/widget/component/communication/no_data_component.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';

class CommunicationTab extends HookConsumerWidget {
  const CommunicationTab(
    this._users, {
    CommunicationTabType type = CommunicationTabType.message,
    required Future<void> Function() onRefresh,
    Key? key,
  })  : _type = type,
        _onRefresh = onRefresh,
        super(key: key);

  final List<CommunicationUser> _users;

  final CommunicationTabType _type;

  final Future<void> Function() _onRefresh;

  Widget getNoDataComponent() {
    switch (_type) {
      case CommunicationTabType.likeFrom:
        return NoDataComponent.fromLiked(onRefresh: _onRefresh);
      case CommunicationTabType.likeTo:
        return NoDataComponent.toLike(onRefresh: _onRefresh);
      case CommunicationTabType.message:
        return NoDataComponent.message(onRefresh: _onRefresh);
    }
  }

  Widget _getCommunicationTile(
    CommunicationUser user, {
    DatingChatRoom? room,
  }) {
    switch (_type) {
      case CommunicationTabType.likeFrom:
        return CommunicationTile.fromLikeFrom(user: user);
      case CommunicationTabType.likeTo:
        return CommunicationTile.fromLikeTo(user: user);
      case CommunicationTabType.message:
        if (room == null) {
          // ここで Exception を投げると以降のデータがすべて表示できなくなってしまうので、空の Container を返す
          return Container();
        }
        return CommunicationTile.fromMessage(
          user: user,
          room: room,
        );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(communicationProvider);
    if (_users.isEmpty) {
      return getNoDataComponent();
    }
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => _getCommunicationTile(
          _users[index],
          room: state.uuidChatRoomMapper[_users[index].uuid],
        ),
        itemCount: _users.length,
        separatorBuilder: (context, index) => const OshirucoDivider(),
      ),
    );
  }
}
