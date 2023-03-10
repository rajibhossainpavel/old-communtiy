import 'dart:async';

import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/state/chat_state_interface/chat_state_interface.dart';

abstract class ChatController<S extends ChatStateInterface>
    extends StateNotifier<S> {
  ChatController(S state) : super(state);

  final loadNextChatLimit = 20;

  final _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _chatStream;

  Stream<QuerySnapshot<Map<String, dynamic>>>? chatStream;

  /// 新規chatのstream, 無限scroll用のlistener対応
  Future<void> addListeners() async {
    /// 無限scrollに対応させる
    scrollController.addListener(_handleScrollChanged);

    /// 新規chatのstream
    listenNewChat();
  }

  @override
  void dispose() {
    _chatStream?.cancel();
    super.dispose();
  }

  void listenNewChat() {
    _chatStream = chatStream?.listen(listenChatCallBack);
  }

  void listenChatCallBack(QuerySnapshot<Map<String, dynamic>> snapshot) =>
      throw UnimplementedError('implement listenChatCallBack');

  Future<void> loadNextChats() => throw UnimplementedError();

  void _handleScrollChanged() {
    final maxScrollExtent = _scrollController.position.maxScrollExtent;
    final currentPosition = _scrollController.position.pixels;
    if (state.isLoading ||
        state.isLastPage ||
        maxScrollExtent - 50 > currentPosition) {
      return;
    }
    loadNextChats();
  }
}
