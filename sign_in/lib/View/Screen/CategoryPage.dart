import 'package:flutter/material.dart';
class CategoryPage extends StatelessWidget {
  String title;
  String image;

  CategoryPage({this.title, this.image});

  static String id = 'CategoryPage';

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),

      body: Center(
        child: Image(image: AssetImage(image),),
      ),
    );
  }
}

