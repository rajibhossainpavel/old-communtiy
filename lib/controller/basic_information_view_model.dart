import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/analytics.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/client/platform_client.dart';
import 'package:oshiruco_app/controller/app_controller.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/enum/prefecture.dart';
import 'package:oshiruco_app/repository/user_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/basic_information_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_input.dart';

class BasicInformationController extends StateNotifier<BasicInformationState> {
  BasicInformationController({
    required UserRepository repository,
    required AppController appController,
  })  : _repository = repository,
        _appController = appController,
        super(const BasicInformationState());

  final UserRepository _repository;

  final AppController _appController;

  Future<void> onTapNickName(BuildContext context) async {
    final res = await showInputDialog(
      context: context,
      title: 'ニックネーム',
      maxLength: 20,
      text: state.nickName,
      hint: 'おしるこちゃん',
      maxLines: 1,
    );

    if (res == null || res.isEmpty) {
      return;
    }

    state = state.copyWith(nickName: res);
  }

  Future<String?> _inputEmail(BuildContext context) async {
    if (Platform.isAndroid) {
      return await PlatformClient.chooseAccount();
    }

    return await showInputDialog(
      context: context,
      title: 'メールアドレス',
      text: state.mailAddress,
      maxLines: 1,
      maxLength: 50,
    );
  }

  Future<void> onTapMailAddress(BuildContext context) async {
    final res = await _inputEmail(context);

    if (res == null || res.isEmpty) {
      return;
    }

    if (!res.isEmail()) {
      await showOkAlertDialog(
        context: context,
        title: 'エラー',
        message: '正しいメールアドレスの形式ではありません',
      );
      return;
    }

    state = state.copyWith(mailAddress: res);
  }

  Future<void> onTapGender(BuildContext context) async {
    final actions = Gender.values
        .map((e) => AlertDialogAction(key: e, label: e.toLabel()))
        .toList();
    final result = await showConfirmationDialog<Gender>(
      context: context,
      title: '性別',
      actions: actions,
    );
    if (result == null) {
      return;
    }
    state = state.copyWith(gender: result);
  }

  Future<void> onTapLivePlace(BuildContext context) async {
    final result = await _selectPrefecture(context, '居住地');
    if (result != null) {
      state = state.copyWith(livePlace: result);
    }
  }

  Future<void> onTapBirthPlace(BuildContext context) async {
    final result = await _selectPrefecture(context, '出身地');
    if (result != null) {
      state = state.copyWith(birthPlace: result);
    }
  }

  Future<void> onTapNextButton(BuildContext context) async {
    try {
      state = state.copyWith(isLoading: true);

      final res = await _repository.registerUserBasicInformation(
          basicInformation: state);
      if (res.hasVerified) {
        await showErrorDialogWithMessage(
            context, 'すでに登録されています。ログインよりサービスの利用をお願いします');
        routemaster.pop();
        return;
      } else if (res.eliminated) {
        await showErrorDialogWithMessage(context, '利用が制限されています');
        routemaster.pop();
        return;
      } else if (res.result != 'success') {
        throw Exception();
      }
      _appController.updateUpdateRegisterBasicInformationFlag(
          flag: res != null);

      Analytics.registerUser(
        gender: state.gender,
        livePlace: state.livePlace,
        birthPlace: state.birthPlace,
      );
      routemaster.push('select-certificate');
    } catch (e) {
      showErrorDialog(context, e);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<Prefecture?> _selectPrefecture(
      BuildContext context, String title) async {
    final actions = Prefecture.values
        .map((e) => AlertDialogAction(key: e, label: e.toLabel()))
        .toList();
    return showConfirmationDialog<Prefecture>(
      context: context,
      title: title,
      actions: actions,
    );
  }
}
