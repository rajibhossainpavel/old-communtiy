import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oshiruco_app/application/const.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/client/image_picker/image_picker.dart';
import 'package:oshiruco_app/client/platform_client.dart';
import 'package:oshiruco_app/client/s3_client/s3_client.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/model/enum/user_key.dart';
import 'package:oshiruco_app/model/response/user_restore_response/user_restore_response.dart';
import 'package:oshiruco_app/repository/user_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/edit_my_page_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_checkbox.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_input.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_picker.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_sigle_selector.dart';
import 'package:oshiruco_app/widget/component/snack_bar/message_snack_bar.dart';

class EditMyPageController extends StateNotifier<EditMyPageState> {
  EditMyPageController({
    required String uuid,
    required UserRepository userRepository,
    required UsersRepository usersRepository,
    required S3Client s3Client,
  })  : _uuid = uuid,
        _userRepository = userRepository,
        _usersRepository = usersRepository,
        _s3client = s3Client,
        super(const EditMyPageState());

  final UserRepository _userRepository;
  final UsersRepository _usersRepository;
  final S3Client _s3client;
  final String _uuid;

  Future<void> loadInitialData(BuildContext context) async {
    try {
      final user = await _usersRepository.fetchUserByUuid(_uuid);
      state = state.copyWith(user: user.user);
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> profileImageOnTapped(BuildContext context, int index) async {
    final result = await showModalActionSheet<PhotoEditMenu>(
      context: context,
      actions: [
        const SheetAction(label: '新しい写真を追加', key: PhotoEditMenu.add),
        const SheetAction(label: 'この写真を変更', key: PhotoEditMenu.replace),
        const SheetAction(label: 'この写真を削除', key: PhotoEditMenu.delete),
      ],
    );

    if (result == null) {
      return;
    }

    switch (result) {
      case PhotoEditMenu.add:
        _addOrReplaceImage(context);
        return;
      case PhotoEditMenu.replace:
        _addOrReplaceImage(context, index: index);
        return;
      case PhotoEditMenu.delete:
        _deleteImage(context, index);
        return;
    }
  }

  Future<String> _getImageFilePath(BuildContext context) async {
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
      return '';
    }

    final pickedFile =
        await pickImageOrRequestPermission(context, result, lowQuality: true);
    if (pickedFile == null) {
      return '';
    }

    try {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      );
      return croppedFile?.path ?? '';
    } finally {
      await File(pickedFile.path).delete();
    }
  }

  Future<void> _deleteImage(BuildContext context, int index) async {
    final user = state.user;
    if (user == null) {
      return;
    }
    final paths = user.photoPaths.splitPath();
    paths.removeAt(index);

    try {
      await _userRepository.updateProfile(UserKey.photoPaths, paths.join('::'));
      state = state.copyWith(user: user.copyWith(photoPaths: paths.join('::')));
    } catch (e) {
      _handleError(context, e);
    }
  }

  /// indexを指定した場合はreplaceする
  Future<void> _addOrReplaceImage(BuildContext context, {int? index}) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final path = await _getImageFilePath(context);

    if (path.isEmpty) {
      return;
    }

    try {
      final fileName = await _s3client.uploadProfileImage(path);
      final photos =
          user.photoPaths.isEmpty ? <String>[] : user.photoPaths.splitPath();
      // indexを指定していない場合は最後に追加する
      if (index == null) {
        photos.add(fileName);
      } else {
        photos[index] = fileName;
      }

      await _userRepository.updateProfile(
          UserKey.photoPaths, photos.join('::'));

      state =
          state.copyWith(user: user.copyWith(photoPaths: photos.join('::')));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> uploadProfileImageOnTapped(BuildContext context) async {
    _addOrReplaceImage(context);
  }

  Future<void> nicknameOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final newNickname = await showInputDialog(
      context: context,
      title: 'ニックネーム',
      maxLength: 20,
      text: user.nickname,
    );

    if (newNickname == null ||
        newNickname.isEmpty ||
        user.nickname == newNickname) {
      return;
    }

    try {
      await _userRepository.updateProfile(UserKey.nickname, newNickname);
    } catch (e) {
      _handleError(context, e);
      return;
    }

    state = state.copyWith(user: user.copyWith(nickname: newNickname));
  }

  Future<void> tweetOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final newTweet = await showInputDialog(
      context: context,
      title: 'つぶやき',
      text: user.tweet,
      maxLength: 20,
      maxLines: 2,
    );

    if (newTweet == null || user.tweet == newTweet) {
      return;
    }
    final _whitespaceRE = RegExp(r"\s+");
    String strippedNewlineTweet = newTweet.replaceAll('\n', ' ');
    strippedNewlineTweet = strippedNewlineTweet.replaceAll(_whitespaceRE, ' ');

    try {
      await _userRepository.updateProfile(UserKey.tweet, strippedNewlineTweet);
    } catch (e) {
      _handleError(context, e);
      return;
    }

    state = state.copyWith(user: user.copyWith(tweet: strippedNewlineTweet));
  }

  Future<void> selfIntroductionOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final newIntroduction = await showInputDialog(
      context: context,
      title: '紹介文',
      text: user.introduction,
      maxLength: 200,
      maxLines: 10,
    );

    if (newIntroduction == null || user.introduction == newIntroduction) {
      return;
    }

    try {
      await _userRepository.updateProfile(
          UserKey.introduction, newIntroduction);
    } catch (e) {
      _handleError(context, e);
      return;
    }

    state = state.copyWith(user: user.copyWith(introduction: newIntroduction));
  }

  Future<void> bloodTypeOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res = await _updateSelectData(
          context, UserKey.bloodType, '血液型', bloodTypes);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(bloodType: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> livePlaceTypeOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res = await _updateSelectData(
          context, UserKey.livePlace, '居住地', prefectures);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(livePlace: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> birthPlaceTypeOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res = await _updateSelectData(
          context, UserKey.birthPlace, '出身地', prefectures);

      if (res == '' || res == user.birthPlace) {
        return;
      }

      state = state.copyWith(user: user.copyWith(birthPlace: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> heightOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final res = await showPickerDialog(
      context: context,
      title: '身長',
      items: heights,
      selected: heights.contains('${user.height}cm')
          ? heights.indexOf('${user.height}cm')
          : 30,
    );

    if (res == null || res.isEmpty) {
      return;
    }

    final rawHeight = res.replaceAll('cm', '');

    try {
      await _userRepository.updateProfile(UserKey.height, rawHeight);
      state = state.copyWith(user: user.copyWith(height: int.parse(rawHeight)));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> bodyTypeOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res =
          await _updateSelectData(context, UserKey.bodyType, '体型', bodyTypes);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(bodyType: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> hairOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res =
          await _updateSelectData(context, UserKey.hair, 'ヘアスタイル', hairs);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(hair: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> personalityOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final response = await showCheckboxDialog(
      context: context,
      title: '性格',
      items: personalities,
      selectedItems:
          user.personality.isEmpty ? [] : user.personality.split(','),
      maxSelected: 3,
    );

    if (response == null) {
      return;
    }

    try {
      await _userRepository.updateProfile(
          UserKey.personality, response.join(','));
      state =
          state.copyWith(user: user.copyWith(personality: response.join(',')));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> sociabilityOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res = await _updateSelectData(
          context, UserKey.sociability, '社交性', sociabilities);
      if (res.isEmpty) {
        return;
      }
      state = state.copyWith(user: user.copyWith(sociability: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> marriageOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res =
          await _updateSelectData(context, UserKey.marriage, '結婚', marriages);
      if (res.isEmpty) {
        return;
      }
      state = state.copyWith(user: user.copyWith(marriage: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> housemateOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final response = await showCheckboxDialog(
      context: context,
      title: '同居人',
      items: housemates,
      selectedItems: user.housemate.isEmpty ? [] : user.housemate.split(','),
    );

    if (response == null) {
      return;
    }

    try {
      await _userRepository.updateProfile(
          UserKey.housemate, response.join(','));
      state =
          state.copyWith(user: user.copyWith(housemate: response.join(',')));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> holidayOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res =
          await _updateSelectData(context, UserKey.holiday, '休日', holiday);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(holiday: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> houseOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res =
          await _updateSelectData(context, UserKey.house, '持ち家区分', house);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(house: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> assetOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res =
          await _updateSelectData(context, UserKey.asset, '保有資産', assets);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(asset: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> walkingOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res =
          await _updateSelectData(context, UserKey.walking, '歩行速度', walking);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(walking: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> sicknessOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final newSickness = await showInputDialog(
      context: context,
      title: '持病',
      text: user.sickness,
      maxLength: 20,
    );

    if (newSickness == null) {
      return;
    }

    try {
      await _userRepository.updateProfile(UserKey.sickness, newSickness);
    } catch (e) {
      _handleError(context, e);
      return;
    }

    state = state.copyWith(user: user.copyWith(sickness: newSickness));
  }

  Future<void> alcoholOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res =
          await _updateSelectData(context, UserKey.alcohol, 'お酒', alcohol);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(alcohol: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> cigarettesOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res = await _updateSelectData(
          context, UserKey.cigarettes, 'タバコ', cigarettes);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(cigarettes: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> broAndSisOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    try {
      final res = await _updateSelectData(
          context, UserKey.broAndSis, '兄弟姉妹', broAndSis);

      if (res.isEmpty) {
        return;
      }

      state = state.copyWith(user: user.copyWith(broAndSis: res));
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> livedPlaceOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final livedPlace = await showInputDialog(
      context: context,
      title: 'かつて住んだところ',
      hint: 'ロンドン, 京都',
      maxLength: 20,
      text: user.livedPlace,
    );

    if (livedPlace == null || livedPlace == user.livedPlace) {
      return;
    }

    try {
      await _userRepository.updateProfile(UserKey.livedPlace, livedPlace);
    } catch (e) {
      _handleError(context, e);
      return;
    }

    state = state.copyWith(user: user.copyWith(livedPlace: livedPlace));
  }

  Future<void> gonePlaceOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final gonePlace = await showInputDialog(
      context: context,
      title: '印象に残った旅先',
      hint: 'ロンドン, 京都',
      maxLength: 20,
      text: user.gonePlace,
    );

    if (gonePlace == null || gonePlace == user.gonePlace) {
      return;
    }

    try {
      await _userRepository.updateProfile(UserKey.gonePlace, gonePlace);
    } catch (e) {
      _handleError(context, e);
      return;
    }

    state = state.copyWith(user: user.copyWith(gonePlace: gonePlace));
  }

  Future<void> religionOnTapped(BuildContext context) async {
    final user = state.user;
    if (user == null) {
      return;
    }

    final religion = await showInputDialog(
      context: context,
      title: '宗教',
      hint: 'キリスト教, 仏教',
      maxLength: 20,
      text: user.religion,
    );

    if (religion == null || religion == user.religion) {
      return;
    }

    try {
      await _userRepository.updateProfile(UserKey.religion, religion);
    } catch (e) {
      _handleError(context, e);
      return;
    }

    state = state.copyWith(user: user.copyWith(religion: religion));
  }

  Future<UserRestoreResponse> restoreAccountOnTapped(BuildContext context,
      {String? userEmail}) async {
    late String email;
    if (Platform.isIOS && userEmail != null) {
      email = userEmail;
    } else {
      email = await PlatformClient.chooseAccount() ?? '';
    }

    if (email.isEmpty) {
      return const UserRestoreResponse();
    }
    final result = await _userRepository.restore(email);
    if (!result.isRestore) {
      await showMessageSnackBar(
        context,
        message: 'このメールアドレスは過去に「おしるこ」で使った事がありません。',
      );
      return const UserRestoreResponse();
    } else {
      await showMessageSnackBar(context, message: 'データを復元しました。');
      state = state.copyWith(user: result.user);
      return result;
    }
  }

  Future<String> _updateSelectData(
    BuildContext context,
    UserKey userKey,
    String title,
    List<String> values,
  ) async {
    final res = await showSingleSelectorDialog(
      context: context,
      items: values,
      title: title,
    );

    if (res == null || res.isEmpty) {
      return '';
    }

    try {
      await _userRepository.updateProfile(userKey, res);
    } catch (e) {
      _handleError(context, e);
      return '';
    }

    return res;
  }

  void _handleError(BuildContext context, Object e) {
    if (e is Exception) {
      debugPrint(e.toString());
    }
    showErrorDialog(context, e);
  }
}

enum PhotoEditMenu {
  add,
  replace,
  delete,
}
