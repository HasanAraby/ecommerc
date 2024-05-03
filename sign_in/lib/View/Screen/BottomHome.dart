import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_in/Model/Model1/CategoryModel.dart';
import 'package:sign_in/Model/Model1/ProductModel.dart';
import 'package:sign_in/View/Screen/CategoryPage.dart';
import 'package:sign_in/View/Screen/ProductPage.dart';
import 'Search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BottomHome extends StatefulWidget {
  @override
  _BottomHomeState createState() => _BottomHomeState();
}

class _BottomHomeState extends State<BottomHome> {
  List <CategoryModel>categories=[
    CategoryModel(name:'Hats',image: 'assets/images/hat.jpg' ),
    CategoryModel(name:'Bags',image: 'assets/images/bag.jpg' ),
    CategoryModel(name:'Watches',image: 'assets/images/watch.jpg' ),
    CategoryModel(name:'Chemises',image: 'assets/images/chemise.jpg'),
    CategoryModel(name:'Shoes',image: 'assets/images/shoe.jpg'),
    ];
  List <ProductModel> products=[
    ProductModel(name:'Hat' ,image: 'assets/images/Cap.jpg' ,price:'300 L.E' ,description: 'This is a hat',),
    ProductModel(name:'Black Shoes' ,image: 'assets/images/BSH.jpg' ,price:'400 L.E' ,description: 'This is a black shoes' ),
    ProductModel(name:'Red Shoes' ,image: 'assets/images/RSH.jpg' ,price:'600 L.E' ,description: 'This is a red shoes' ),
    ProductModel(name:'Blue Jacket' ,image: 'assets/images/BBL.jpg' ,price:'800 L.E' ,description: 'This is a blue jacket' ),
    ];
  List images=['assets/images/Cap.jpg','assets/images/BSH.jpg' ,'assets/images/caps.jpg',];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
          
            
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color: Colors.grey[300]

                   ),

                   height: 40.h,

                   child: InkWell(
                     onTap: (){
                       Navigator.pushNamed(context, Search.id);
                     },
                     child: TextField(
                       decoration: InputDecoration(
                         prefixIcon: Icon(FontAwesomeIcons.search),
                      ),
                     ),
                   ),
                 ),
               ),

             Container(

                height:130 ,
                child: ListView.builder(
               itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
               itemBuilder: (context,index){
                 return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(
                               builder: (context)=>CategoryPage(title: categories[index].name,image: categories[index].image,)));
                         },
                         child: Column(
                             children: [
                               CircleAvatar(

                                 radius: 36,
                                 backgroundImage: AssetImage(categories[index].image),
                               ),
                               SizedBox(height: 3,),
                               Text(categories[index].name,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 21),)
                             ]
                         ),
                       ),

                 );
    }
),
             ),

           Container(
             height: 300.h,
             width: 360.w,
             child: Swiper(
                itemCount: images.length,
                autoplay: true,
                pagination: SwiperPagination(),
                itemBuilder: ( context,  index) {
                return Container(
                height: 300.h,
                width: 360.w,
                child:Image(image: AssetImage(images[index]),)
                );

                     },

    ),
           ),

      Container(
        height: 400.h,
        width: 360.w,

        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,

            itemBuilder: (context,index)
        {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>
                ProductPage(
                   productModel: products[index],
                )));
              },
              child: Column(
                children: [
                  Container(
                    height: 280.h,
                    width: 360.w,
                    child: Image(image: AssetImage(products[index].image) ),
                  ),

                  Text(products[index].price,style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),)
                ],
              ),
            ),
          );
        }),
      )



            ],
      ),
    );
  }
}
