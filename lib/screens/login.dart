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

      appBar: AppBar(

        title: Center(

        child: Image.network("https://i.ibb.co/QbHLm3W/1619222838571.png", height: 80,),
      ),

      ),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.network("https://cdn.discordapp.com/attachments/834814458495762473/835379199605997568/cute-critters-vector4.png",
            height: 100,
          ),
          Padding(padding: EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(


              gradient: LinearGradient(
                  colors: [Colors.green[200], Colors.lightGreen[200]]),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0), bottom: Radius.circular(10.0)),
            ),
            child: Column(
              children: <Widget>[


                Padding(padding: EdgeInsets.all(7),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email Address"
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value){
                    setState(() {
                      _email = value.trim();
                    });
                  },
                ),
                ),
                Padding(padding: EdgeInsets.all(7),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password"
                  ),
                  maxLength: 10,
                  obscureText: true,
                  onChanged: (value){
                    setState(() {
                      _password = value.trim();
                    });
                  },
                ),
                ),
              ],
            ),
          ),
          ),
          Container(
            height: 50, width: 300,
            decoration: BoxDecoration(


              gradient: LinearGradient(
                  colors: [Colors.green[800], Colors.lightGreen[500]]),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0), bottom: Radius.circular(20.0)),
            ),
            child: FlatButton(onPressed:()async{
              auth.signInWithEmailAndPassword(email: _email, password: _password);

              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homescreen()));

            },
               child: Text("LOGIN")),
          ),
          Container(
              height: 50, width: 300,
              decoration: BoxDecoration(


                gradient: LinearGradient(
                    colors: [Colors.green[800], Colors.lightGreen[500]]),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0), bottom: Radius.circular(20.0)),
              ),
              child: FlatButton(onPressed: (){
                auth.createUserWithEmailAndPassword(email: _email, password: _password);
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homescreen()));
              }, child: Text("SIGNUP"),)
          ),
        ],
      ),
    );
  }
}
