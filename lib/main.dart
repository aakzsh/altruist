import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';                      //main library for everything //firebase authentication
import 'homescreen.dart';              //importing homescreen to access it

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Altruist",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

        gradient: LinearGradient(colors: [Colors.white70, Colors.white70]),
      ),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(
                    height: 80.0,
                    elevation: 20.0,
                    minWidth: 150.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          // to navigate to homescreen as for now
                            builder: (context) => homescreen()),
                      );
                    },
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.amber[600],
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38.0),
                    ),
                    color: Colors.white,
                  ),

                ],
              ),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}