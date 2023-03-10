import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/model/enum/register_state.dart';
import 'package:permission_handler/permission_handler.dart';

Future<OkCancelResult> showErrorDialog(BuildContext context, Object o) async {
  if (o is HttpBadGatewayException) {
    return OkCancelResult.ok;
  }

  if (o is RegisterStateException) {
    var msg = '';
    switch (o.registerState) {
      case RegisterState.unreadID:
        msg = '証明書の読み取りに失敗しました';
        break;
      case RegisterState.unreadBirthday:
        msg = '誕生日を読み取れませんでした';
        break;
      case RegisterState.underAge:
        msg = '現在の年齢ではおしるこの利用はできません';
        break;
      default:
        break;
    }
    return await showOkAlertDialog(
      context: context,
      title: 'エラー',
      message: msg,
    );
  }

  return await showOkAlertDialog(
    context: context,
    title: 'エラー',
    message: 'エラーが発生しました。\nしばらく経ってからお試しください。',
  );
}

Future<OkCancelResult> showHttpErrorDialog(
  BuildContext context,
  HttpErrorException error,
) async {
  String title;
  String msg;

  switch (error.runtimeType) {
    case HttpBadGatewayException:
      title = 'サーバーが混雑しています';
      msg = '時間を置いてアクセスしてください';
      break;
    default:
      title = 'エラー';
      msg = 'エラーが発生しました。\nしばらく経ってからお試しください。';
      break;
  }

  return await showOkAlertDialog(context: context, title: title, message: msg);
}

Future<OkCancelResult> showCancelPurchaseDialog(BuildContext context) {
  return showOkAlertDialog(
    context: context,
    title: 'キャンセル',
    message: '購入がキャンセルされました。',
  );
}

Future<OkCancelResult> showErrorDialogWithMessage(
    BuildContext context, String msg) {
  return showOkAlertDialog(
    context: context,
    title: 'エラー',
    message: msg,
  );
}

/// 以下の内容でアラートダイアログを表示します。
/// title: [permissionName]にアクセスできません
/// message: [permissionName]のアクセスを許可してください.
/// okLabel: 設定を開く
/// cancelLabel: キャンセル
Future<void> showPermissionDialog(
  BuildContext context,
  String permissionName,
) async {
  final result = await showOkCancelAlertDialog(
    context: context,
    title: '$permissionNameにアクセスできません',
    message: '$permissionNameのアクセスを許可してください.',
    okLabel: '設定を開く',
    cancelLabel: 'キャンセル',
    defaultType: OkCancelAlertDefaultType.cancel,
  );

  if (result == OkCancelResult.ok) {
    openAppSettings();
  }
}

Future<bool> showAlertConfirmationDialog(
    BuildContext context, String title, String message, Function onConfirm,
    {String? okBtnLabel}) async {
  final result = await showOkCancelAlertDialog(
    context: context,
    title: title,
    message: message,
    okLabel: okBtnLabel ?? 'ブロックする',
    cancelLabel: 'キャンセルする',
    defaultType: OkCancelAlertDefaultType.cancel,
  );

  if (result == OkCancelResult.ok) {
    onConfirm();
    return true;
  }
  return false;
}

void preventDoubleTap(BuildContext context) {
  showDialog<bool>(
      context: context,
      builder: (context) => WillPopScope(
          onWillPop: () async => false,
          child: const Center(child: OshirucoCircleProgressIndicator())));
}

void showCustomPopUpDialog(BuildContext context, List<Widget> children) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      );
    },
  );
}
