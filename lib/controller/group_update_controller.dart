import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oshiruco_app/client/image_picker/image_picker.dart';
import 'package:oshiruco_app/model/group_category/group_category.dart';
import 'package:oshiruco_app/repository/groups_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/group_update_state/group_update_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_selected_group_category.dart';
import 'package:oshiruco_app/widget/screen/group_detail_screen.dart';

abstract class GroupUpdateController extends StateNotifier<GroupUpdateState> {
  GroupUpdateController({
    required GroupsRepositoryInterface groupsRepository,
  })  : _groupsRepository = groupsRepository,
        super(const GroupUpdateState());

  final GroupsRepositoryInterface _groupsRepository;

  final TextEditingController _groupNameController = TextEditingController();
  TextEditingController get nameController => _groupNameController;

  final TextEditingController _groupIntroduceController =
      TextEditingController();
  TextEditingController get introduceController => _groupIntroduceController;

  bool canSubmit() =>
      state.selectedImage != '' &&
      nameController.text.trim() != '' &&
      introduceController.text.trim() != '' &&
      state.category != null;

  Future<void> onPressedChoosePhoto(BuildContext context) async {
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

    try {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      );
      if (croppedFile == null) {
        return;
      }

      state = state.copyWith(selectedImage: croppedFile.path);
    } finally {
      await File(pickedFile.path).delete();
    }
  }

  Future<List<GroupCategory>> _fetchGroupCategories() =>
      _groupsRepository.groupCategories();

  Future<void> onPressedCategorySelectButton(BuildContext context) async {
    final categories = await _fetchGroupCategories();
    categories.removeWhere((category) => category.id == 'official');
    final selectedCategory = await showSelectedGroupCategoryDialog(
      context,
      categories: categories,
    );
    if (selectedCategory != null) {
      state = state.copyWith(category: selectedCategory);
    }
  }

  Future<String> updateGroup(BuildContext context);

  Future<void> onPressedSubmit(BuildContext context) async {
    try {
      state = state.copyWith(isLoading: true);

      final groupId = await updateGroup(context);

      if (groupId == '') {
        throw Exception('faild to create group');
      }

      await routemaster.pop();

      _showSnackBar(context);

      routemaster.push(
        '/groups/detail/$groupId',
        queryParameters: <String, String>{
          GroupDetailScreen.isOwnerKey: 'true',
        },
      );
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  String get snackBarMessage;

  void _showSnackBar(
    BuildContext context,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(snackBarMessage),
      ),
    );
  }
}
