import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/view/widgets/edudock_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class EdudockWebView extends StatelessWidget {
  final String url;
  final String title;

  const EdudockWebView({Key key, this.url, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: EdudockAppBar(title),
      url: url,
    );
  }
}
