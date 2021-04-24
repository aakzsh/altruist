import 'package:flutter/material.dart';
import '../webview_container.dart';

class resources extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: WebViewContainer('https://www.google.com', 'Resources'), //webpage url to be replaced
    );
  }
}