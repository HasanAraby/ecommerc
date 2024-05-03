import 'package:flutter/material.dart';
import 'package:sign_in/Model/Model1/ProductModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_in/Model/Theme/CartState.dart';
import 'package:sign_in/Model/Theme/FavouriteState.dart';
import 'package:sign_in/Model/Theme/Quantity.dart';
import 'package:sign_in/Model/Theme/ThemeState.dart';
import 'package:badges/badges.dart';
class ProductPage extends StatefulWidget {
  static String id='ProductPage';
 /* String name;
  String price;
  String description;
  String image;
  ProductPage({this.image,this.price,this.description,this.name});
*/

  ProductModel productModel;
  ProductPage({this.productModel});


  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  @override
  Widget build(BuildContext context) {
    print ('state');
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Badge(

                position: BadgePosition(top: 0,end: 0),
                badgeContent:
                Consumer<FavouriteState>(
                  builder: (context,data,child)=> InkWell(

                      onTap: (){


                        data.invertFavorite();
                        data.x?   Provider.of<FavouriteState>(context,listen: false).addFavourite(widget.productModel)
                            : Provider.of<FavouriteState>(context,listen: false).cancelFavourite(widget.productModel);

                      },
                      child: Icon(
                        data.x? Icons.favorite


                            :Icons.favorite_border
                      ,color: Colors.red,size: 30,)),
                ),
                badgeColor: Colors.white,

                child: Container(
                    height: 280.h,
                    width: 360.w,
                    child:
                    Image(
                        image: AssetImage( widget.productModel.image),fit: BoxFit.cover,)),
              ),
              SizedBox(height: 30.h,),
              Text(widget.productModel.name,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30

                ),),
              SizedBox(height: 30.h,),

              Text(widget.productModel.price,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30

                ),),

              SizedBox(height: 30.h,),

              Text(widget.productModel.description,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30

                ),),

                SizedBox(height: 10.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
//Consumer: to rebuild only widgets have consumer only not scaffold
                  Consumer<Quantity>(

                    builder: (context,data,child)=>InkWell(
                      onTap: (){
                        data.add();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('+',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.green),),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Consumer<Quantity>(builder: (context,data,child)=> Text(data.x.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.green),)),
                  ),

                  Consumer<Quantity>(
                    builder: (context,data,child)=> InkWell(
                      onTap: () {
                        data.subtract();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('-',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.green),),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40.h,
              ),

              Row(
                children: [

                  SizedBox(width: 240,),

                  InkWell(
                    onTap: (){
                      widget.productModel.quantity= Provider.of<Quantity>(context,listen: false).x;
                      Provider.of<CartState>(context,listen: false).addProduct(widget.productModel);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Added to cart'),backgroundColor: Colors.greenAccent,));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.deepPurple,
                        ),
                        height: 60.h,
                        width: 100.w,

                        child: Center(
                          child: Text('Add To Cart',style: TextStyle(color: Colors.white,fontSize: 18,
                          fontWeight: FontWeight.w300),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
