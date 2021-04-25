import 'package:flutter/material.dart';
import '../webview_container.dart';

class resources extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: WebViewContainer('http://85.159.212.188/resources.html', 'Resources'), //webpage url to be replaced
    );
  }
}