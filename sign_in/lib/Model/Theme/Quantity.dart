import 'package:flutter/cupertino.dart';

class Quantity extends ChangeNotifier{

  int x=0;

  add(){
    x++;
    notifyListeners();
  }
  subtract(){
    x>0?x--:null;
    notifyListeners();
  }
}