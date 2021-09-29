import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'constants/colors.dart';

ThemeData lightMyTheme() {
  return ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
      buttonTheme: ButtonThemeData(height: 48.0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: darkBlue,
              shape: (RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(48.0)))),
              primary: milk,
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
      textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54),
          button: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)));
}

ThemeData darkMyTheme() {
  return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: milk,
              shape: (RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(48.0)))),
              primary: darkBlue,
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
      buttonTheme: ButtonThemeData(height: 48.0),
      textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
          bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white54),
          button: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white)));
}
