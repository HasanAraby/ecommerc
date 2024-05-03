import 'package:flutter/material.dart';
class VarTextFormField extends StatefulWidget {
  String title;
  String hint;
  bool obsecure;
  IconData icon;
  VarTextFormField({this.title,this.hint,this.icon,this.obsecure});
  @override
  _VarTextFormFieldState createState() => _VarTextFormFieldState();
}

class _VarTextFormFieldState extends State<VarTextFormField> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            child:Align(
              alignment: Alignment.topLeft,
              child: Text(widget.title,style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.deepPurple

              ),),
            ),

            padding: const EdgeInsets.all(8)

        ),
        TextFormField(
          obscureText: widget.obsecure,
          decoration: InputDecoration(

              prefixIcon: Icon(widget.icon,color: Colors.deepPurple,),
            hintText: widget.hint,
            suffixIcon: widget.title=='Email'?null:InkWell(
                onTap: (){
                  setState(() {
                    widget.obsecure=!widget.obsecure;
                  });
                },
                child: Icon(Icons.remove_red_eye_outlined,color: Colors.deepPurple,))
            ,
          ),
        ),
      ],
    );
  }
}
