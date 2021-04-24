import 'package:altruist/screens/login.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Altruist',
      theme: ThemeData(
        accentColor: Colors.orange,
        primarySwatch: Colors.green,
      ),
      home: LoginScreen(),
    );
  }
}
