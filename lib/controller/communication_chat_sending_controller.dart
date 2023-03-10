import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oshiruco_app/client/image_picker/image_picker.dart';
import 'package:oshiruco_app/client/s3_client/s3_client.dart';
import 'package:oshiruco_app/model/communication_chat/communication_chat.dart';
import 'package:oshiruco_app/repository/chat_repository.dart';
import 'package:oshiruco_app/repository/communication_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/communication_chat_sending_state/communication_chat_sending_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_shortage_greeting.dart';
import 'package:oshiruco_app/widget/component/oshiruco_dialogs.dart';

class CommunicationChatSendingController
    extends StateNotifier<CommunicationChatSendingState> {
  CommunicationChatSendingController(
    this._chatRepository, {
    required CommunicationRepositoryInterface communicationRepository,
    required S3Client s3client,
    required String uuid,
    required String uid,
  })  : _s3Client = s3client,
        _uuid = uuid,
        _uid = uid,
        _communicationRepository = communicationRepository,
        super(
          const CommunicationChatSendingState(),
        );

  final String _uuid;

  final String _uid;

  final ChatRepository _chatRepository;

  final CommunicationRepositoryInterface _communicationRepository;

  final S3Client _s3Client;

  final TextEditingController _textController = TextEditingController();
  TextEditingController get textController => _textController;

  Future<void> onTapSendMessage(
    BuildContext context, {
    required String roomId,
    required String otherUserUUID,
  }) async {
    try {
      final message = _textController.value.text.trim();
      if (message == '' && state.imagePath == '') {
        return;
      }
      var src = '';
      if (state.imagePath != null && state.imagePath.isNotEmpty) {
        src = await _s3Client.uploadChatImage(
          File(state.imagePath),
        );
        state = state.copyWith(imagePath: '');
      }
      _textController.clear();
      final communicationChat = CommunicationChat(
        message: message,
        photoPath: src,
        uuid: _uuid,
        uid: _uid,
        roomID: <String, dynamic>{
          roomId: DateTime.now().millisecondsSinceEpoch,
        },
        postedAt: DateTime.now(),
      );
      final result = await _communicationRepository.postCommunicationMessages(
        otherUserUUID,
        message: message,
      );
      if (!result) {
        await _handleShortageGreeting(context);
        return;
      }
      await _chatRepository.createCommunicationChat(communicationChat);
      await _chatRepository.updateFriendChatRoom(
        roomId,
        ownUserUuid: _uuid,
        message: message,
      );
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    } finally {
      if (state.imagePath.isNotEmpty) {
        await File(state.imagePath).delete();
      }
    }
  }

  Future<void> _handleShortageGreeting(BuildContext context) async {
    final res = await showShortageGreetingDialog(
          context,
          'メッセージを送るには１挨拶が必要です。おしるこポイントを挨拶に交換してください。',
        ) ??
        false;
    if (res) {
      routemaster.push('point');
    }
  }

  /// 成功: true, 失敗: false,
  Future<bool> onTapSelectImage(
    BuildContext context, {
    required String roomId,
  }) async {
    unFocusFormKeyboard(context);
    final result = await showModalActionSheet<ImageSource>(
      context: context,
      title: '画像選択',
      actions: [
        const SheetAction(label: 'カメラ', key: ImageSource.camera),
        const SheetAction(label: 'ギャラリー', key: ImageSource.gallery),
      ],
    );
    if (result == null) {
      return false;
    }
    final pickedFile =
        await pickImageOrRequestPermission(context, result, lowQuality: true);

    if (pickedFile == null) {
      return false;
    }

    state = state.copyWith(imagePath: pickedFile.path);
    final res = await OshirucoDialogs.chatImageModal(
      context,
      title: _textController.value.text,
      file: File(state.imagePath),
    );
    return res ?? false;
  }

  void unFocusFormKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  Future<void> onTapSendForwardMessage(BuildContext context,
      {required String roomId,
      required String otherUserUUID,
      String message = '',
      String imagePath = ''}) async {
    try {
      if (message == '' && imagePath == '') {
        return;
      }
      final communicationChat = CommunicationChat(
        message: message,
        photoPath: imagePath,
        uuid: _uuid,
        uid: _uid,
        roomID: <String, dynamic>{
          roomId: DateTime.now().millisecondsSinceEpoch,
        },
        postedAt: DateTime.now(),
      );
      final result = await _communicationRepository.postCommunicationMessages(
        otherUserUUID,
        message: message,
      );
      if (!result) {
        await _handleShortageGreeting(context);
        return;
      }
      await _chatRepository.createCommunicationChat(communicationChat);
      await _chatRepository.updateFriendChatRoom(
        roomId,
        ownUserUuid: _uuid,
        message: message,
      );
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
