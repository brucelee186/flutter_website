import 'package:flutter/material.dart';
import 'package:quiver/strings.dart';

// color trans tools
Color string2Color(String colorStirng){
  int value = 0x00000000;
  if(isNotEmpty(colorStirng)){
    if(colorStirng[0] == '#'){
      colorStirng = colorStirng.substring(1);
    }
    value = int.tryParse(colorStirng, radix: 16);
    if(value < 0XFF000000){
      value += 0xFF000000;
    }
  }
  return Color(value);
}