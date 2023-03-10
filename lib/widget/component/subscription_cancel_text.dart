import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SubscriptionCancelText extends StatelessWidget {
  const SubscriptionCancelText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? RichText(
            text: TextSpan(
              style: const TextStyle(
                color: OshirucoColors.text,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                const TextSpan(
                  text: '''
1.設定 App を開きます。
2.自分の名前をタップします。
3.「サブスクリプション」をタップします (「サブスクリプション」が表示されない場合は、代わりに「iTunes と App Store」をタップします。次に、自分の Apple ID をタップし、「Apple ID を表示」をタップしてサインインし、下にスクロールして「サブスクリプション」を表示し、タップします)。
4.管理したいサブスクリプションをタップします。目的のサブスクリプションが表示されない場合は''',
                ),
                TextSpan(
                  text: 'こちら',
                  style: const TextStyle(
                    color: Colors.blueAccent,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://support.apple.com/ja-jp/HT202039#whatnext');
                    },
                ),
                const TextSpan(text: '。\n'),
                const TextSpan(
                    text:
                        '5.「サブスクリプションをキャンセルする」をタップします。「サブスクリプションをキャンセルする」が表示されない場合は、すでに解約されています (したがって更新されることもありません)。'),
              ],
            ),
          )
        : const Text(
            '''
「おしるこ」の会員ランクは、一度購入すると自動的に繰り返される、定期購入です。定期購入を解約する場合は、以下の手順にしたがって解約してください。
1. Android 搭載のスマートフォンまたはタブレットで、Google Play ストア Google Play を開きます。
2. 画面左上のメニュー アイコン内[定期購入] の順にタップします。
3. 解約する定期購入をタップします。
4. [定期購入を解約] をタップします。
5. 画面の指示に沿って操作します。
''',
            style: TextStyle(
              color: OshirucoColors.text,
              fontWeight: FontWeight.bold,
            ),
          );
  }
}
