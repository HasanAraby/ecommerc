import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_in/Model/Theme/CartState.dart';
class Cart extends StatelessWidget {
  static String id='Cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: Provider.of<CartState>(context).cartBuy.length,
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
                        child: Image(image:AssetImage(Provider.of<CartState>(context).cartBuy[index].image) ,fit: BoxFit.cover),

                ),

                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(Provider.of<CartState>(context).cartBuy[index].name),
                          SizedBox(height: 10.h),
                         Text(Provider.of<CartState>(context).cartBuy[index].price)
                        ],
                      ),
                    ),

                    Spacer(),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Provider.of<CartState>(context,listen: false).cancelProduct( Provider.of<CartState>(context,listen: false).cartBuy[index]);
                          },
                            child: Icon(Icons.cancel)),
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
