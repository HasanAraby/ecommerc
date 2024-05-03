import 'package:flutter/material.dart';
class ThemeState extends ChangeNotifier{
  bool dark=false;
  bool invertColor(){
    dark=!dark;
    notifyListeners();
  }
}