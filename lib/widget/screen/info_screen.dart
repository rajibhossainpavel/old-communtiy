import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/application/url.dart';
import 'package:oshiruco_app/widget/component/webview_wrapper.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  bool isTop = false;
  String title = '';
  WebViewController? _webViewController;

  @override
  Widget build(BuildContext context) {
    final initialUrl = const OshirucoUrl().info;

    return Scaffold(
      backgroundColor: OshirucoColors.green,
      appBar: _appBar(context),
      body: SafeArea(
        child: WebViewWrapper(
          initialUrl: initialUrl,
          javascriptMode: JavascriptMode.unrestricted,
          gestureNavigationEnabled: true,
          onWebViewCreated: (controller) {
            _webViewController = controller;
          },
          onPageStarted: (url) {
            setState(() {
              title = '';
            });
          },
          onPageFinished: (url) async {
            final _title = await _webViewController?.getTitle() ?? '';
            setState(() {
              title = _title;
              isTop = url == const OshirucoUrl().info;
            });
          },
          navigationDelegate: (navigation) {
            // TOPページがどうかでapp barを変更する
            if (navigation.isForMainFrame) {
              setState(() {
                isTop = navigation.url == const OshirucoUrl().info;
              });
            }
            return NavigationDecision.navigate;
          },
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      centerTitle: true,
      title: isTop
          ? null
          : Text(
              title,
              style: OshirucoTextStyles.largeWhite,
            ),
      elevation: 0,
      leading: isTop
          ? const SizedBox()
          : IconButton(
              onPressed: () async {
                await _webViewController?.goBack();
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
      actions: isTop
          ? [
              Padding(
                padding: const EdgeInsets.all(8),
                child: OutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.white),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '閉じる',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]
          : [],
    );
  }
}
