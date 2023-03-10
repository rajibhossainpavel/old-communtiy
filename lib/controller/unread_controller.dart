import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/client/platform_client.dart';
import 'package:oshiruco_app/state/unread_state/unread_state.dart';

enum UnreadKind {
  message,
  like,
  network,
}
String _kindToString(UnreadKind kind) {
  switch (kind) {
    case UnreadKind.message:
      return 'message';
    case UnreadKind.like:
      return 'like';
    case UnreadKind.network:
      return 'network';
  }
}

class UnreadController extends StateNotifier<UnreadState> {
  UnreadController({
    required this.client,
  }) : super(const UnreadState());

  final OshirucoApiClient client;

  Future<void> getUnread() async {
    try {
      final unread = await client.getUnread();
      state = state.copyWith(
        message: unread.message,
        comment: unread.comment,
        groupChat: unread.groupChat,
        history: unread.history,
        like: unread.like,
        network: unread.network,
        news: unread.news,
      );

      await PlatformClient.setNotificationBadgeNumber(state.total);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> markAsRead(UnreadKind kind) async {
    await client.markAsRead(_kindToString(kind));
    await getUnread();
  }
}
