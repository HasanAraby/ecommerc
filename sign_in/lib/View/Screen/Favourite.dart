import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_in/Model/Theme/CartState.dart';
import 'package:sign_in/Model/Theme/FavouriteState.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Favourite extends StatefulWidget {
static String id='Favourite';
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
          itemCount: Provider.of<FavouriteState>(context).cartFavourite.length,
          itemBuilder: (context,index)
          {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                    child: Image(image:AssetImage(Provider.of<FavouriteState>(context).cartFavourite[index].image) ,fit: BoxFit.cover),

                  ),

                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(Provider.of<FavouriteState>(context).cartFavourite[index].name),
                      SizedBox(height: 10.h),
                      Text(Provider.of<FavouriteState>(context).cartFavourite[index].price)
                    ],
                  ),
                ),

                Spacer(),
                Column(
                  children: [
                    InkWell(
                        onTap: (){
                          Provider.of<FavouriteState>(context,listen: false).cancelFavourite( Provider.of<FavouriteState>(context,listen: false).cartFavourite[index]);
                          Provider.of<FavouriteState>(context,listen: false).invertFavorite();
                        },
                        child: Icon( Provider.of<FavouriteState>(context,listen: false).x? Icons.favorite


                            :Icons.favorite_border)),
                    SizedBox(height: 3,),
                    Text(Provider.of<CartState>(context).cartBuy[index].quantity.toString()),
                  ],
                )


              ],
            );
          }

      ),

    );
  }
}
