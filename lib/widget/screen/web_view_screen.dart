import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/widget/component/webview_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen(
    this.title,
    this.url, {
    Key? key,
    this.haveLinkOnPageToShow = true,
    this.isWhiteMode = false,
    this.titleChanged = true,
  }) : super(key: key);

  static const paramKeyTitle = 'title';
  static const paramKeyUrl = 'url';

  final String title;
  final String url;
  final bool isWhiteMode;
  final bool haveLinkOnPageToShow;
  final bool titleChanged;

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late WebViewController _webViewController;
  bool _canGoBack = false;
  String _title = '';

  @override
  void initState() {
    _title = widget.title;
    super.initState();
  }

  Future _launchURL(NavigationRequest requestUrl) async {
    final url = requestUrl.url.toString();
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: widget.isWhiteMode ? Colors.black : Colors.white,
          ),
          backgroundColor:
              widget.isWhiteMode ? Colors.white : OshirucoColors.green,
          elevation: 0,
          title: Text(
            _title,
            style: widget.isWhiteMode
                ? OshirucoTextStyles.large
                : OshirucoTextStyles.largeWhite,
          ),
          centerTitle: true,
          leading: _canGoBack
              ? IconButton(
                  icon: const Icon(Icons.arrow_back_ios_outlined,
                      color: Colors.white),
                  onPressed: () {
                    _webViewController.goBack();
                  },
                )
              : null,
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
              if (widget.titleChanged) {
                _title = title;
              }
              _canGoBack = canGoBack;
            });
          },
          navigationDelegate: widget.haveLinkOnPageToShow
              ? (NavigationRequest request) {
                  if (request.url.toString() != widget.url) {
                    _launchURL(request);
                    return NavigationDecision.prevent;
                  }

                  return NavigationDecision.navigate;
                }
              : null,
        ));
  }
}
