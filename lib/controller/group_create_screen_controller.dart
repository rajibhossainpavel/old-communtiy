import 'dart:io';

import 'package:flutter/material.dart';
import 'package:oshiruco_app/client/s3_client/s3_client.dart';
import 'package:oshiruco_app/controller/group_update_controller.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/repository/groups_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_shortage_point.dart';

class GroupCreateScreenController extends GroupUpdateController {
  GroupCreateScreenController({
    required GroupsRepositoryInterface groupRepository,
    required S3Client s3client,
  })  : _groupsRepository = groupRepository,
        _s3Client = s3client,
        super(
          groupsRepository: groupRepository,
        );

  final GroupsRepositoryInterface _groupsRepository;

  final S3Client _s3Client;

  @override
  Future<String> updateGroup(BuildContext context) async {
    final fileName =
        await _s3Client.uploadGroupImage(File(state.selectedImage));
    if (fileName == '') {
      throw Exception('faild to upload image');
    }

    try {
      /// グループ作成
      return await _groupsRepository.groupCreate(
        intro: introduceController.text.trim(),
        name: nameController.text.trim(),
        fileName: fileName,
        category: state.category!,
      );
    } on PointShortageException {
      if (mounted) {
        await showShortagePointDialog(
          context,
          onTapUpdateUserRank: () => routemaster.push('user_status'),
          onTapBuyPoint: () => routemaster.push('point'),
        );
      }
      return '';
    }
  }

  @override
  String get snackBarMessage => '${nameController.text.trim()}を作成しました。';
}
