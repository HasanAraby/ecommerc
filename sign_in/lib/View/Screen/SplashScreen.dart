import 'dart:async';
import 'Entry.dart';
import 'package:flutter/material.dart';
import 'file:///G:/Flutter/sign_in/lib/View/Screen/SignIn.dart';


class SplashScreen extends StatefulWidget {

  static String id='SplashScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 1),
        (){
          Navigator.popAndPushNamed(context, Entry.id);
        }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('C H A T S',style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.w900,
          color: Colors.deepPurple
        ),),
      ),
    );
  }
}
