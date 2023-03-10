import 'dart:async';
import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oshiruco_app/client/image_picker/image_picker.dart';
import 'package:oshiruco_app/client/remote_config/config.dart';
import 'package:oshiruco_app/client/s3_client/s3_client.dart';
import 'package:oshiruco_app/model/concierge_chat/concierge_chat.dart';
import 'package:oshiruco_app/model/remote_config/concierge/concierge.dart';
import 'package:oshiruco_app/repository/concierge_repository.dart';
import 'package:oshiruco_app/state/concierge_state/concierge_state.dart';
import 'package:oshiruco_app/widget/component/oshiruco_dialogs.dart';
import 'package:oshiruco_app/widget/screen/concierge_screen.dart';

class ConciergeController extends StateNotifier<ConciergeState> {
  ConciergeController({
    required int chatLatestTimestamp,
    required String uuid,
    required ConciergeRepositoryInterface repository,
    required S3Client s3Client,
    required MessageType messageType,
  })  : _repository = repository,
        _chatLatestTimestamp = chatLatestTimestamp,
        _s3Client = s3Client,
        _uuid = uuid,
        _messageType = messageType,
        super(const ConciergeState());

  final ConciergeRepositoryInterface _repository;

  final S3Client _s3Client;

  final String _uuid;

  final MessageType _messageType;

  bool _isInitialized = false;

  late String _documentId;

  late Concierge _concierge;

  // conciergeのchatを最後に開いた時刻
  int _chatLatestTimestamp = DateTime.now().millisecondsSinceEpoch;

  // 現在表示されているchatの中で最小のtimestamp
  int _currentMinimumTimestamp = DateTime.now().millisecondsSinceEpoch;

  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _chatStream;

  Stream<QuerySnapshot<Map<String, dynamic>>>? chatStream;

  final ScrollController scrollController = ScrollController();

  Future<void> _prepare() async {
    final c = Config.getConcierge();
    if (c == null) {
      return;
    }
    _isInitialized = true;
    _concierge = c;
    _documentId = '${_uuid}_${_concierge.id}';
    await _findOfCreateChatRoom();
  }

  Future<void> _findOfCreateChatRoom() async {
    final _chatRoom = await _repository.findConciergeRoom(_documentId);
    if (_chatRoom != null) {
      return;
    }

    debugPrint('Did not found the existing chat room');
    try {
      var message = _concierge.msgDefault;
      if (_messageType == MessageType.restore) {
        message = _concierge.msgRestore;
      }

      await _repository.createConciergeRoom(
        userUUID: _uuid,
        expertID: _concierge.id,
        message: message,
      );
      // TODO(qkuronekop): messageを課金 or notによって変更する。
      await _repository.createFirstMessage(
        documentId: _documentId,
        firstMessage: message,
      );
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> loadInitialData() async {
    try {
      // 先にチャットルームの作成(or 取得)を行う
      await _prepare();
      _chatLatestTimestamp = DateTime.now().millisecondsSinceEpoch;
      await _repository.readTheThread(
        userUUID: _uuid,
        expertID: _concierge.id,
      );
      // chatを取得
      await _loadNextChats();
      // 無限スクロールに対応させる
      scrollController.addListener(_handleScrollChanged);

      // 新規chatのlistenを実行
      _listenNewChats();

      state = state.copyWith(concierge: _concierge);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<int> fetchUnreadCount(int latestTime) async {
    if (!_isInitialized) {
      await _prepare();
    }
    _chatLatestTimestamp = latestTime;
    try {
      return _repository.countUnreadChats(
        _documentId,
        chatLatestTimestamp: _chatLatestTimestamp,
      );
    } catch (e) {
      debugPrint(e.toString());
      return 0;
    }
  }

  Future<void> onTapPop() async {
    try {
      state = state.copyWith(isPopped: true);
      await _repository.readTheThread(
        userUUID: _uuid,
        expertID: _concierge.id,
      );
    } finally {
      state = state.copyWith(isPopped: false);
    }
  }

  Future<void> onTapSendMessage(String message) async {
    try {
      await _repository.sendMessage(
        expertID: _concierge.id,
        uuID: _uuid,
        documentID: _documentId,
        message: message,
      );
    } catch (e) {
      // TODO(qkuronekop): handle error;
      debugPrint(e.toString());
    }
  }

  Future<void> onTapSendImage(BuildContext context) async {
    XFile? pickedFile;

    try {
      final result = await showModalActionSheet<ImageSource>(
        context: context,
        actions: [
          const SheetAction(
              icon: Icons.camera_alt, label: 'カメラ', key: ImageSource.camera),
          const SheetAction(
              icon: Icons.photo_album, label: 'ギャラリー', key: ImageSource.gallery)
        ],
      );
      if (result == null) {
        return;
      }
      pickedFile =
          await pickImageOrRequestPermission(context, result, lowQuality: true);
      if (pickedFile == null) {
        return;
      }
      final imageFile = File(pickedFile.path);
      final res = await OshirucoDialogs.chatImageModal(
            context,
            title: '画像を送信する',
            file: imageFile,
          ) ??
          false;
      if (!res) {
        return;
      }
      final photoPath = await _s3Client.uploadChatImage(imageFile);
      await _repository.sendImage(
        expertID: _concierge.id,
        documentId: _documentId,
        photoPath: photoPath,
      );
    } catch (e) {
      // TODO(qkuronekop): handle error;
      debugPrint(e.toString());
    } finally {
      if (pickedFile != null && pickedFile.path.isNotEmpty) {
        await File(pickedFile.path).delete();
      }
    }
  }

  Future<void> onTapDeleteMessage(String docID, int index) async {
    try {
      state.chats.removeAt(index);
      state = state.copyWith(
        chats: [...state.chats],
      );
      await _repository.deleteMessage(docID);
    } catch (e) {
      // TODO(qkuronekop): handle error;
      debugPrint(e.toString());
    }
  }

  Future<void> onPressedEditMessage(ConciergeChat chat, int index) async {
    try {
      state.chats[state.chats.indexWhere((el) => el.id == chat.id)] = chat;
      state = state.copyWith(
        chats: [...state.chats],
      );

      await _repository.editMessage(chat);
    } catch (e) {
      // TODO(qkuronekop): handle error;
      debugPrint(e.toString());
    }
  }

  void _listenNewChats() {
    chatStream = _repository.streamConciergeChats(
      'roomID.$_documentId',
      chatReadTimeStamp: _chatLatestTimestamp,
    );
    _chatStream = chatStream?.listen((snapshot) {
      final docs = snapshot.docs;
      if (docs.isEmpty) {
        return;
      }
      final chat = ConciergeChat.fromSnapshot(docs[0]);
      if (state.chats.isNotEmpty && chat == state.chats[0]) {
        return;
      }
      state = state.copyWith(
        chats: [chat, ...state.chats],
      );
      _chatLatestTimestamp = DateTime.now().millisecondsSinceEpoch;
    });
  }

  @override
  void dispose() {
    _chatStream?.cancel();
    super.dispose();
  }

  void _handleScrollChanged() {
    final maxScrollExtent = scrollController.position.maxScrollExtent;
    final currentPosition = scrollController.position.pixels;
    if (state.isLoading ||
        state.isLastPage ||
        maxScrollExtent - 50 > currentPosition) {
      return;
    }
    _loadNextChats();
  }

  // 現在表示中のchatの中で最も古いもののtimestampより大きいものを10件分取得する。
  Future<void> _loadNextChats() async {
    state = state.copyWith(isLoading: true);

    // 取得前に最も古いchatのtimestampを取得する。
    if (state.chats.isNotEmpty) {
      _currentMinimumTimestamp =
          state.chats.last.postedAt.millisecondsSinceEpoch;
    } else {
      _currentMinimumTimestamp = DateTime.now().millisecondsSinceEpoch;
    }

    // それよりも古いchatを取得
    final chats = await _repository.fetchConciergeChats(
      _documentId,
      currentMinimumTimeStamp: _currentMinimumTimestamp,
      limited: 10,
    );

    state = state.copyWith(
      chats: [...state.chats, ...chats],
      isLastPage: chats.length < 10,
      isLoading: false,
    );
  }
}
