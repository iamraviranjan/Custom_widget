import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Random_btn extends StatelessWidget {
  // Create a class object.
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;     // voidcallback fun are not a get of arguments and  doesn't give return value.

 //  Create a constructor.

  Random_btn({
   required this.btnName,
    this.icon,
    this.bgColor= Colors.blue,
    this.textStyle,
    this.callback});


  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        onPressed: (){
          callback!();
        }, child: icon!=null ?
    Row(
      children: [
          icon!,
        SizedBox(
          width: 10,
          height: 10),
        Text(btnName , style: textStyle,),
      ],

    ) : Text(btnName , style: textStyle),
      style: ElevatedButton.styleFrom(
        //backgroundColor: bgColor,
        shadowColor: Colors.deepOrange,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
          topRight: Radius.circular(21),
          bottomLeft:Radius.circular(21),

        )),
      ),
    );
  }
}