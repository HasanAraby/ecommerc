
import 'package:flutter/cupertino.dart';
import 'package:sign_in/Model/Model1/ProductModel.dart';
class FavouriteState extends ChangeNotifier{

  bool x=false;
  List <ProductModel> cartFavourite=[];

  invertFavorite(){
    x=!x;
    notifyListeners();
  }


  addFavourite(y){
    cartFavourite.add(y);
    notifyListeners();
  }

  cancelFavourite(y){
    cartFavourite.remove(y);
    notifyListeners();
  }

}