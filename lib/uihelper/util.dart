import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle myTextStyle11(){
  return TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
    color: Colors.amber
  );
}


TextStyle myTextStyle21({Color TexColor= Colors.deepPurple, FontWeight = FontWeight.w800 }){
  return TextStyle(
      fontSize: 22,
    color: TexColor,
    fontWeight: FontWeight,


  );
}