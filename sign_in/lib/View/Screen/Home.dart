import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_in/Model/Theme/CartState.dart';
import 'package:sign_in/View/Screen/Favourite.dart';
import 'package:sign_in/View/Screen/Settings.dart';
import 'package:sign_in/View/Screen/Storage.dart';
import 'BottomHome.dart';
import 'Cart.dart';
import 'package:sign_in/Model/Theme/ThemeState.dart';
class Home extends StatefulWidget {
  static String id='Home';
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int index=1;
  List page=[BottomHome(),Favourite(),Cart(),Settings()];
  GlobalKey<ScaffoldState> key=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: Drawer(
        child: Center(
          child: InkWell(
            onTap: (){
              Provider.of<ThemeState>(context,listen: false).invertColor();
            },
            child: Container(
              color: Colors.blue,
              height: 80,
              width: 80,
              child: Center(
                child: Text('Color'),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (num){
          setState(() {
            index=num;
          });},
        currentIndex: index,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black38,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                           key.currentState.openDrawer();
                      },
                        child: Icon(Icons.menu)),
                    Spacer(),
                    Badge(
                        badgeColor: Colors.red,

                        badgeContent: Text(Provider.of<CartState>(context).cartBuy.length.toString()
                        ,style: TextStyle(color: Colors.white),),
                        child: Icon(Icons.shopping_cart_outlined)),
                  ],
                ),
               SizedBox(height: 30),

               Expanded(child: page[index]) ,
              ],
            ),
          ),
        ),
      ),
    );
  }
}






