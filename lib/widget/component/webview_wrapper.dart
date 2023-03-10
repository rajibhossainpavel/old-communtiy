import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';

class WebViewWrapper extends StatefulWidget {
  const WebViewWrapper({
    Key? key,
    this.initialUrl,
    required this.javascriptMode,
    this.onWebViewCreated,
    this.onPageStarted,
    this.onPageFinished,
    this.navigationDelegate,
    this.loadingIndicator,
    this.gestureNavigationEnabled = false,
  }) : super(key: key);

  final String? initialUrl;
  final JavascriptMode javascriptMode;
  final WebViewCreatedCallback? onWebViewCreated;
  final PageStartedCallback? onPageStarted;
  final PageFinishedCallback? onPageFinished;
  final NavigationDelegate? navigationDelegate;
  final Widget? loadingIndicator;
  final bool gestureNavigationEnabled;

  @override
  State<StatefulWidget> createState() => _WebViewWrapperState();
}

class _WebViewWrapperState extends State<WebViewWrapper> {
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      WebView(
        initialUrl: widget.initialUrl,
        javascriptMode: widget.javascriptMode,
        onWebViewCreated: widget.onWebViewCreated,
        onPageStarted: (value) {
          setState(() {
            loading = true;
          });
          widget.onPageStarted?.call(value);
        },
        onPageFinished: (value) {
          if (loading) {
            setState(() {
              loading = false;
            });
          }

          widget.onPageFinished?.call(value);
        },
        onProgress: (value) {
          // goBack で戻った場合は onPageFinished が呼ばれないことがあるので、progress でも判定する
          if (value == 100 && loading) {
            setState(() {
              loading = false;
            });
          }
        },
        navigationDelegate: (navigation) {
          final uri = Uri.tryParse(navigation.url);
          if (uri != null && uri.scheme == 'oshiruco') {
            _handleCustomScheme(uri);
            return NavigationDecision.prevent;
          }

          return widget.navigationDelegate?.call(navigation) ??
              NavigationDecision.navigate;
        },
        gestureNavigationEnabled: widget.gestureNavigationEnabled,
      ),
      if (loading)
        Container(
          color: Colors.white,
          width: double.infinity,
          child: widget.loadingIndicator ??
              Column(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Spacer(),
                  OshirucoCircleProgressIndicator(),
                  Spacer(),
                ],
              ),
        ),
    ]);
  }

  void _handleCustomScheme(Uri uri) {
    if (uri.host != 'browser') {
      return;
    }

    final url = uri.queryParameters['url'] ?? '';
    if (url.isNotEmpty) {
      launch(
        Uri.parse(url).toString(),
        forceWebView: false,
        forceSafariVC: false,
      );
    }
  }
}
