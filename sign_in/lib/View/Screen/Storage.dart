import 'package:flutter/material.dart';

class Storage extends StatefulWidget {

  @override
  _StorageState createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Icon(Icons.storage,size: 70,color: Colors.deepPurple,),
        )

    );
  }
}