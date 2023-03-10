import 'package:flutter/cupertino.dart';

enum RegisterState {
  registered, // 登録のみ（身分証明書未提出）
  pending, // 承認待ち(APIでの利用なし、管理画面での利用あり)
  verified, // 身分証明書提出+承認済み サービス利用可能
  rejected, // リジェクト
  eliminateID, // 追放身分証明書

  // 以下、API未使用ステータス
  none,
  unreadID,
  unreadBirthday,
  underAge,
}

extension RegisterStateExtension on RegisterState {
  static RegisterState fromString(String val) {
    debugPrint('--current RegisterState--');
    debugPrint(val.toString());
    switch (val) {
      case 'registered':
        return RegisterState.registered;
      case 'pending':
        return RegisterState.pending;
      case 'verified':
        return RegisterState.verified;
      case 'rejected':
        return RegisterState.rejected;
      case 'eliminateID':
        return RegisterState.eliminateID;
      // 以下、APIでの利用なし
      case 'none':
        return RegisterState.none;
      case 'unreadID':
        return RegisterState.unreadID;
      case 'unreadBirthday':
        return RegisterState.unreadBirthday;
      case 'underAge':
        return RegisterState.underAge;
      default:
        // リジェクトの場合は何も設定されないでいるためここを通る
        return RegisterState.none;
      // throw UnsupportedError('Unsupported Register Type');
    }
  }
}
