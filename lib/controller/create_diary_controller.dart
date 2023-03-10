import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/client/image_picker/image_picker.dart';
import 'package:oshiruco_app/client/s3_client/s3_client.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/model/enum/diary_type.dart';
import 'package:oshiruco_app/repository/diaries_repository.dart';
import 'package:oshiruco_app/repository/points_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/create_diary_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_shortage_point.dart';
import 'package:video_player/video_player.dart';

class CreateDiaryController extends StateNotifier<CreateDiaryState> {
  CreateDiaryController({
    required String uuid,
    required DiariesRepository diariesRepository,
    required PointsRepository pointsRepository,
    required UsersRepository usersRepository,
    required S3Client s3Client,
  }) : super(const CreateDiaryState()) {
    _diariesRepository = diariesRepository;
    _usersRepository = usersRepository;
    _pointsRepository = pointsRepository;
    _s3Client = s3Client;

    _fetchUser(uuid);
  }

  late final DiariesRepository _diariesRepository;
  late final PointsRepository _pointsRepository;
  late final UsersRepository _usersRepository;
  late final S3Client _s3Client;

  VideoPlayerController? videoPlayerController;

  Future<void> _fetchUser(String uuid) async {
    try {
      final res = await _usersRepository.fetchUserByUuid(uuid);
      state = state.copyWith(user: res.user);
    } catch (e) {
      // todo error handling
    }
  }

  void updateTweet(String tweet) {
    state = state.copyWith(tweet: tweet.trim());
  }

  Future<void> onTapPhoto(BuildContext context) async {
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

    final pickedFile =
        await pickImageOrRequestPermission(context, result, lowQuality: true);
    if (pickedFile == null) {
      return;
    }
    state = state.copyWith(imagePath: pickedFile.path, moviePath: '');
  }

  void onUpdateOnlyMatched(bool onlyMatched) {
    state = state.copyWith(onlyMatched: onlyMatched);
  }

  Future<void> onTapMovie(BuildContext context) async {
    final result = await showModalActionSheet<ImageSource>(
      context: context,
      actions: [
        const SheetAction(
          icon: Icons.camera_alt,
          label: 'カメラ',
          key: ImageSource.camera,
        ),
        const SheetAction(
          icon: Icons.photo_album,
          label: 'ギャラリー',
          key: ImageSource.gallery,
        ),
      ],
    );

    if (result == null) {
      return;
    }

    final pickedFile = await pickVideoOrRequestPermission(context, result);
    if (pickedFile == null) {
      return;
    }

    videoPlayerController = VideoPlayerController.file(File(pickedFile.path));
    await videoPlayerController?.initialize();

    state = state.copyWith(imagePath: '', moviePath: pickedFile.path);
  }

  void onTapVoice() {}

  Future<void> createDiary(BuildContext context) async {
    final imagePath = state.imagePath;
    final moviePath = state.moviePath;
    var type = DiaryType.text;
    var fileName = '';

    try {
      state = state.copyWith(isLoading: true);

      if (imagePath.isNotEmpty) {
        type = DiaryType.photo;
        fileName = await _s3Client.uploadDiaryImage(File(imagePath));
        if (fileName.isEmpty) {
          showErrorDialog(context, fileName);
        }
      } else if (moviePath.isNotEmpty) {
        type = DiaryType.movie;
        fileName = await _s3Client.uploadDiaryMovie(File(moviePath));
        if (fileName.isEmpty) {
          showErrorDialog(context, fileName);
        }
      }

      final text = state.tweet;

      final response = await _diariesRepository.create(
        text: text,
        media: fileName,
        type: type,
        matched: state.onlyMatched,
      );
      if (response.result == 'success') {
        await _pointsRepository.postEvent(type.toEventName());
      }
      Navigator.pop(context);
    } on PointShortageException {
      if (mounted) {
        await showShortagePointDialog(
          context,
          onTapUpdateUserRank: () => routemaster.push('user_status'),
          onTapBuyPoint: () => routemaster.push('point'),
        );
      }
    } catch (e) {
      showErrorDialog(context, fileName);
    } finally {
      if (imagePath.isNotEmpty) {
        await File(imagePath).delete();
      }
      if (mounted) {
        state = state.copyWith(isLoading: false);
      }
    }
  }
}
