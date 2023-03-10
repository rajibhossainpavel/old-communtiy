import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:oshiruco_app/client/s3_client/s3_client.dart';
import 'package:oshiruco_app/controller/group_update_controller.dart';
import 'package:oshiruco_app/repository/groups_repository.dart';

class GroupEditScreenController extends GroupUpdateController {
  GroupEditScreenController({
    required GroupsRepositoryInterface groupRepository,
    required S3Client s3client,
  })  : _groupsRepository = groupRepository,
        _s3Client = s3client,
        super(
          groupsRepository: groupRepository,
        );

  final GroupsRepositoryInterface _groupsRepository;

  final S3Client _s3Client;

  late String _groupId;

  Future<void> loadInitialData(String groupId) async {
    _groupId = groupId;
    final group = await _groupsRepository.groupsDetailFindById(groupId);
    final categories = await _groupsRepository.groupCategories();
    introduceController.value = TextEditingValue(text: group.intro);
    nameController.value = TextEditingValue(text: group.name);

    state = state.copyWith(
      selectedImage: group.icon,
      category: categories
          .firstWhereOrNull((category) => category.name == group.categoryName),
    );
  }

  @override
  Future<String> updateGroup(BuildContext context) async {
    final regExp = RegExp(
      r'group/[0-9]+.jpg',
      caseSensitive: false,
      multiLine: false,
    );
    String? fileName;
    if (!regExp.hasMatch(state.selectedImage)) {
      fileName = await _s3Client.uploadGroupImage(File(state.selectedImage));
      if (fileName == '') {
        throw Exception('faild to upload image');
      }
    }

    /// グループ更新
    await _groupsRepository.groupUpdate(
      groupId: _groupId,
      intro: introduceController.text.trim(),
      name: nameController.text.trim(),
      fileName: fileName ?? state.selectedImage,
      category: state.category!,
    );
    return _groupId;
  }

  @override
  String get snackBarMessage => '${nameController.text.trim()}を更新しました。';
}
