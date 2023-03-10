import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/application/url.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/webview_wrapper.dart';

class MarcheScreen extends StatelessWidget {
  const MarcheScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MarcheWebViewScreen(
      'おしるこマルシェ',
      const OshirucoUrl().marche,
    );
  }
}

class _MarcheWebViewScreen extends StatefulWidget {
  const _MarcheWebViewScreen(
    this.title,
    this.url, {
    Key? key,
  }) : super(key: key);

  final String title;
  final String url;

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<_MarcheWebViewScreen> {
  late WebViewController _webViewController;
  bool _canGoBack = false;
  String _title = '';

  @override
  void initState() {
    _title = widget.title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: OshirucoColors.green,
        elevation: 0,
        title: Text(
          _title,
          style: OshirucoTextStyles.largeWhite,
        ),
        centerTitle: true,
        leading: _canGoBack
            ? IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  _webViewController.goBack();
                },
              )
            : IconButton(
                onPressed: () => routemaster.push('/info'),
                icon: const Icon(
                  Icons.info_outline,
                  size: 28,
                  color: Colors.white,
                ),
              ),
      ),
      body: WebViewWrapper(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
        onPageFinished: (value) async {
          final canGoBack = await _webViewController.canGoBack();
          final title = await _webViewController.getTitle() ?? '';
          setState(() {
            _canGoBack = canGoBack;
            _title = title;
          });
        },
        navigationDelegate: (request) async {
          final canGoBack = await _webViewController.canGoBack();
          setState(() {
            _canGoBack = canGoBack;
            if (!canGoBack) {
              _title = widget.title;
            }
          });
          return NavigationDecision.navigate;
        },
        loadingIndicator: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: const [
              LinearProgressIndicator(color: OshirucoColors.red),
              Spacer(),
              OshirucoCircleProgressIndicator(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
