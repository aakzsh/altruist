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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.network("https://i.ibb.co/WzVQysh/1619224039598.png",
          height: 200,
          ),
          Column(
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
                maxLength: 10,
                obscureText: true,
                onChanged: (value){
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),
              Container(
                height: 50, width: 300,
                decoration: BoxDecoration(


                  gradient: LinearGradient(
                      colors: [Colors.green[800], Colors.lightGreen[500]]),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
                ),
                child: FlatButton(onPressed:(){
                  auth.signInWithEmailAndPassword(email: _email, password: _password);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homescreen()));
                }, child: Text("LOGIN")),
              ),
              Container(
                height: 50, width: 300,
                decoration: BoxDecoration(


                  gradient: LinearGradient(
                      colors: [Colors.green[800], Colors.lightGreen[500]]),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
                ),
                child: FlatButton(onPressed: (){
                  auth.createUserWithEmailAndPassword(email: _email, password: _password);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homescreen()));
                }, child: Text("SIGNUP"),)
              ),


            ],
          ),
        ],
      ),
    );
  }
}
