 import 'package:flutter/cupertino.dart';
import 'package:sign_in/Model/Model1/ProductModel.dart';

class CartState extends ChangeNotifier{
 List <ProductModel> cartBuy=[];
  addProduct(x){
    cartBuy.add(x);
    notifyListeners();
  }

  cancelProduct(x){
    cartBuy.remove(x);
    notifyListeners();
  }

}