import 'dart:async';

import 'package:digi/login.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';
//import 'package:flutter_ui_splash_screen/homeScreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new LoginScreen()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        //child: new Image.asset('images/flutterwithlogo.png'),
         child: Text('DigiPay',
         style: TextStyle(
      color: Colors.blue[800],
      fontWeight: FontWeight.bold,
      fontSize: 50))
        
      ),
      appBar: AppBar(
        title: Text(
              '',
            style: TextStyle(
              color: Colors.lightBlueAccent[100],
            )
      )),
    );
  }
}