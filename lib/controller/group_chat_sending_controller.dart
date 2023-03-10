import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/client/image_picker/image_picker.dart';
import 'package:oshiruco_app/client/s3_client/s3_client.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/model/group_chat/group_chat.dart';
import 'package:oshiruco_app/repository/chat_repository.dart';
import 'package:oshiruco_app/repository/groups_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/group_chat_sending_state/group_chat_sending_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_shortage_greeting.dart';
import 'package:oshiruco_app/widget/component/oshiruco_dialogs.dart';

class GroupChatSendingController extends StateNotifier<GroupChatSendingState> {
  GroupChatSendingController({
    required ChatRepositoryInterface chatRepository,
    required GroupsRepositoryInterface groupsRepository,
    required String uuid,
    required String uid,
    required S3Client s3Client,
  })  : _groupsRepository = groupsRepository,
        _chatRepository = chatRepository,
        _uuid = uuid,
        _uid = uid,
        _s3Client = s3Client,
        super(const GroupChatSendingState());

  final ChatRepositoryInterface _chatRepository;

  final GroupsRepositoryInterface _groupsRepository;

  final String _uuid;

  final String _uid;

  final S3Client _s3Client;

  final TextEditingController _textController = TextEditingController();
  TextEditingController get textController => _textController;

  Future<void> onTapSendMessage(
    BuildContext context,
    String groupId,
    bool isOwner,
  ) async {
    try {
      final message = _textController.value.text.trim();
      if (message == '' && state.imagePath == '') {
        return;
      }

      // 2秒以内に投稿した場合はエラーにする
      final twoSecondsLater =
          state.lastSendTime?.add(const Duration(seconds: 2));
      if (twoSecondsLater != null &&
          DateTime.now().isBefore(twoSecondsLater) == true) {
        await showErrorDialogWithMessage(context, '連続投稿できません');
        return;
      }

      if (!isOwner) {
        await _groupsRepository.checkCanSendMessage();
      }

      var src = '';
      if (state.imagePath != null && state.imagePath.isNotEmpty) {
        src = await _s3Client.uploadChatImage(File(state.imagePath));
        state = state.copyWith(imagePath: '');
      }
      _textController.clear();
      final groupChat = GroupChat(
        groupID: <String, dynamic>{
          groupId: DateTime.now().millisecondsSinceEpoch
        },
        message: message,
        photoPath: src,
        postedAt: DateTime.now(),
        uuid: _uuid,
        uid: _uid,
      );

      await _chatRepository.createGroupChat(groupChat);
      await _groupsRepository.sendChatNotification(
        groupId,
        message: message.isNotEmpty ? message : '画像がアップロードされました。',
        isOwner: isOwner,
      );
      state = state.copyWith(imagePath: '', lastSendTime: DateTime.now());
    } on PointShortageException {
      if (mounted) {
        _handleShortageGreeting(context);
      }
    } finally {
      if (state.imagePath.isNotEmpty) {
        await File(state.imagePath).delete();
      }
    }
  }

  Future<void> onTapSelectImage(BuildContext context,
      {required String groupId, required bool isOwner}) async {
    final result = await showModalActionSheet<ImageSource>(
      context: context,
      title: '画像選択',
      actions: [
        const SheetAction(label: 'カメラ', key: ImageSource.camera),
        const SheetAction(label: 'ギャラリー', key: ImageSource.gallery)
      ],
    );
    if (result == null) {
      return;
    }
    final pickedFile =
        await pickImageOrRequestPermission(context, result, lowQuality: true);
    if (pickedFile == null) {
      return;
    }

    state = state.copyWith(imagePath: pickedFile.path);
    final res = await OshirucoDialogs.chatImageModal(
      context,
      title: _textController.value.text,
      file: File(state.imagePath),
    );
    if (res ?? false) {
      onTapSendMessage(context, groupId, isOwner);
    }
  }

  void unFocusFormKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
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
}
