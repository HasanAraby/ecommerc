import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_in/View/Widgets/VarTextFormField.dart';
import 'Home.dart';
class ForgetPassword extends StatefulWidget {
  static String id='ForgetPassword';
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Icon(FontAwesomeIcons.shopify,color: Colors.deepPurple,size: 70,),
            ),

            Padding(
              padding: const EdgeInsets.all(18),
              child: Image(image: AssetImage('assets/images/undraw_forgot_password_gi2d.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(.0),
              child: VarTextFormField(title: 'Email',icon: Icons.email,hint: 'Enter Your Email',obsecure: false,),
            ),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.all(36.0),
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
        ),
      ),
    );
  }
}
