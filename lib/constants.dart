import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Color kRed = Color.fromRGBO(255, 0, 0, 1);
Color kGrey = Colors.black87;
MaterialColor kMaterialColor = MaterialColor(0xFFFF0000, {
  50: Color(0xFFFFF3F3),
  100: Color(0xFFFFE6E6),
  200: Color(0xFFFFC0C0),
  300: Color(0xFFFF9797),
  400: Color(0xFFFF4D4D),
  500: Color(0xFFFF0000),
  600: Color(0xFFE30000),
  700: Color(0xFF990000),
  800: Color(0xFF730000),
  900: Color(0xFF4A0000),
});

InputDecoration textFieldDecoration = InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  hintStyle: TextStyle(color: Colors.black),
  labelStyle: TextStyle(color: Colors.black),
  hintText: "",
  fillColor: Colors.white.withOpacity(0.7),
  focusColor: Colors.white,
  filled: true,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(60),
  ),
  suffixIcon: Icon(Icons.email),
);

InputDecoration getInputDecoration(
        {required String hintText, required Icon icon}) =>
    InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintStyle: TextStyle(color: Colors.black),
      labelStyle: TextStyle(color: Colors.black),
      hintText: hintText,
      fillColor: Colors.white.withOpacity(0.7),
      focusColor: Colors.white,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(60),
      ),
      suffixIcon: icon,
    );

TextStyle kHeadingStyle = TextStyle(
  color: Colors.white,
  fontSize: 25,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w700,
);
TextStyle kSubheadingStyle = TextStyle(
  color: Colors.grey,
  fontSize: 15,
  fontFamily: 'Poppins',
);

TextStyle kAppBarStyle =
    TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900);
