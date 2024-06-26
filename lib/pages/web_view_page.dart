import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewPage extends StatelessWidget {
  final String urlLink;
  const WebViewPage({required this.urlLink, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(urlLink)),
      ),
    ));
  }
}
