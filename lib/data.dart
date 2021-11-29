import 'package:flutter/material.dart';


final Color mainHexColor = Hexcolor.frommHex("#1C1C1C");
final Color accentHexColor = Hexcolor.frommHex("#FCC91C");

class Hexcolor{
 static Color frommHex(String hexString){
   final buffer=StringBuffer();
   if(hexString.length<=7) buffer.write('ff');
   buffer.write(hexString.replaceFirst('#', ''));

   return Color(int.parse(buffer.toString(),radix: 16));
 }
}