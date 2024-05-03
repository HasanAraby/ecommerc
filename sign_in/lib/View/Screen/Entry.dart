import 'package:flutter/material.dart';
import 'package:sign_in/View/Screen/Favourite.dart';
import 'SignIn.dart';
import 'ForgetPassword.dart';
import 'SignUp.dart';
import 'Home.dart';
class Entry extends StatefulWidget {
  static String id='Entry';
  @override
  _EntryState createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(60),
              child: Text('Hello!',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, SignIn.id);
                },

                child: Container(
                  height: 40,
                  width: 190,
                  color: Colors.deepPurple,
                  child:  Center(
                    child: Text('SIGN IN',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                      ),),
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, ForgetPassword.id);
                },

                child: Container(
                  height: 40,
                  width: 290,
                  color: Colors.deepPurple,
                  child:  Center(
                    child: Text('FORGET PASSWORD',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                      ),),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, SignUp.id);
                },

                child: Container(
                  height: 40,
                  width: 190,
                  color: Colors.deepPurple,
                  child:  Center(
                    child: Text('SIGN UP',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                      ),),
                  ),
                ),
              ),
            ),










          ],
        ),
      )
    );
  }
}
