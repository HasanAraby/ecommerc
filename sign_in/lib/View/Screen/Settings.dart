import 'package:flutter/material.dart';

class Settings extends StatefulWidget {

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Icon(Icons.settings,size: 70,color: Colors.deepPurple,),
        )

    );
  }
}