import 'package:altruist/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (value){
              setState(() {
                _email = value.trim();
              });
            },
          ),
          TextField(
            obscureText: true,
            onChanged: (value){
              setState(() {
                _password = value.trim();
              });
            },
          ),
          Row(
            children: <Widget>[
              FlatButton(onPressed:(){
                auth.signInWithEmailAndPassword(email: _email, password: _password);
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homescreen()));
              }, child: Text("LOGIN")),
              FlatButton(onPressed: (){
                auth.createUserWithEmailAndPassword(email: _email, password: _password);
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homescreen()));
              }, child: Text("SIGNUP"),)
            ],
          ),
        ],
      ),
    );
  }
}
