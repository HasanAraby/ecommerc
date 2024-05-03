import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Search extends StatelessWidget {
  static String id='Search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
          decoration: InputDecoration(
          prefixIcon: Icon(FontAwesomeIcons.search),
          )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
