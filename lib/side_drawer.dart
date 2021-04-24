import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

final datenow = new DateTime.now();

class MainDrawer extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(40.0)),
              gradient: LinearGradient(colors: [Colors.green[600], Colors.lightGreen[800]]),
            ),
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          //firebase se linked karna hai vro
                          'assets/logo1.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'USERNAME',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: FlatButton.icon(
              onPressed: () {

              },
              icon: Icon(
                Icons.library_books,
              ),
              label: Text(
                "Privacy Policy",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[900],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ToggleSwitch(
              minWidth: 90.0,
              minHeight: 90.0,
              fontSize: 16.0,
              initialLabelIndex: 1,
              activeBgColor: Colors.green,
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.grey[900],
              labels: ['Light', 'dark'],
              onToggle: (index) {
                print('switched to: $index');  //add the functionality here @joey for dark mode toggle
              },
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: FlatButton.icon(
              onPressed: () {
                auth.signOut();
              },
              icon: Icon(
                Icons.account_circle,
              ),
              label: Text(
                "LogOut",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[900],
                ),
              ),
            ),
          ),
          Container(

            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.green[600], Colors.lightGreen[800]]),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '$datenow',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}