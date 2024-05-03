import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_in/View/Screen/ForgetPassword.dart';
import 'package:sign_in/View/Screen/SignUp.dart';
import 'package:sign_in/View/Widgets/VarTextFormField.dart';
import 'Home.dart';
import 'Favourite.dart';

class SignIn extends StatefulWidget {
  static String id='SignIn';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [


               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: Icon(FontAwesomeIcons.shopify,color: Colors.deepPurple,size: 70,),
               ),

            Form(child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: VarTextFormField(title: 'Email',icon: Icons.email,hint: 'Enter Your Email',obsecure: false,),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: VarTextFormField(title: 'Password',icon: Icons.lock,hint: 'Enter Your Password',obsecure: true,),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.popAndPushNamed(context, Home.id);
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





              ],
            )

            )

          ],
          ),
      ),
    );
  }
}
