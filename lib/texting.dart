import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textingScreen extends StatefulWidget {

  @override
  _textingScreenState createState() => _textingScreenState();
}

class _textingScreenState extends State<textingScreen> {

  final items = List<String>.generate(10, (i) => "Item $i");


  @override
  Widget build(BuildContext context) {
    final double heightscreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.network("https://i.ibb.co/QbHLm3W/1619222838571.png", height: 60,),
            Text("CHAT"),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
      Container(
        constraints: BoxConstraints(maxHeight: heightscreen-160),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              receive("hi"),
              send("how you doing"),
              receive("good lol"),
              receive("how about you?"),
              send("i'm good too typing a long asf message to check if the text is overflowing mhmmmmmmmmmmmmmmm"),
              receive("hehe nais"),
              send("ikr"),
              receive("bye"),
            ],
          ),
        ),

      ),
          Container(
            height: 60, width: double.infinity,
            color: Colors.green[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.camera_alt),
                Container(
                  width: 250,
                  color: Colors.white,
                  child: TextField(

                    decoration: InputDecoration(hintText: "Type message..."),
                  ),
                ),
                IconButton(icon: Icon(Icons.send), onPressed: (){})
              ],
            ),
          ),
        ],
      ),
    );
  }
}

send(String message){
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child:  Container(
          constraints: BoxConstraints( maxWidth: 200),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green[800], Colors.lightGreen[500]]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.0), bottom: Radius.circular(20.0)),
          ),

          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text(message,
            style: TextStyle(
              color: Colors.white
            ),
            ),
          ),
        ),
      ),
    ],
  );

}

receive(String message){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child:  Container(
          constraints: BoxConstraints( maxWidth: 200),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purpleAccent, Colors.blue[500]]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.0), bottom: Radius.circular(20.0)),
          ),

          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text(message,
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    ],
  );

}
