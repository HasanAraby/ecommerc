import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_in/Model/Theme/CartState.dart';
import 'package:sign_in/Model/Theme/FavouriteState.dart';
import 'package:sign_in/Model/Theme/Quantity.dart';
import 'package:sign_in/Model/Theme/ThemeState.dart';
import 'package:sign_in/View/Screen/Cart.dart';
import 'package:sign_in/View/Screen/CategoryPage.dart';
import 'package:sign_in/View/Screen/Favourite.dart';
import 'package:sign_in/View/Screen/Home.dart';
import 'package:sign_in/View/Screen/ProductPage.dart';
import 'SplashScreen.dart';
import 'SignIn.dart';
import 'SignUp.dart';
import 'Entry.dart';
import 'ForgetPassword.dart';


main(){
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context)=>ThemeState()),
            ChangeNotifierProvider(create: (context)=> CartState()),
            ChangeNotifierProvider(create: (context)=>Quantity()),
            ChangeNotifierProvider(create: (context)=>FavouriteState()),
          ],
          child: SignApp()));
}

class SignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=>MaterialApp(
        debugShowCheckedModeBanner: false,
       theme: ThemeData(
         brightness: Provider.of<ThemeState>(context).dark?Brightness.dark:Brightness.light
       ),

        home: SplashScreen(),
        routes: {
          Home.id:(context)=>Home(),
          Entry.id:(context)=>Entry(),
          SignIn.id:(context)=>SignIn(),
          SignUp.id:(context)=>SignUp(),
          SignIn.id:(context)=>SignIn(),
          ForgetPassword.id:(context)=>ForgetPassword(),
          Favourite.id:(context)=>Favourite(),
          CategoryPage.id:(context)=>CategoryPage(),
          ProductPage.id:(context)=>ProductPage(),
          Cart.id:(context)=>Cart(),

        },


      ),
    );
  }
}
