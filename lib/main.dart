import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';                      //main library for everything //firebase authentication
import 'package:shared_preferences/shared_preferences.dart';
import 'homescreen.dart';              //importing homescreen to access it
import 'src/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences.setMockInitialValues({});
  runApp(App());
  
}




