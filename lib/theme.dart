import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'constants/colors.dart';

ThemeData lightMyTheme() {
  return ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
      appBarTheme:
          AppBarTheme(iconTheme: IconThemeData(color: scaffoldBackgroundColor), elevation: 0, backgroundColor: Colors.white),
      textSelectionTheme: TextSelectionThemeData(cursorColor: blue, selectionHandleColor: blue),
      buttonTheme: ButtonThemeData(height: 52.0),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide(width: 0, style: BorderStyle.none)),
          filled: true,
          fillColor: milk,
          contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
          labelStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
          hintStyle: TextStyle(color: Color(0xffADB5BD), fontSize: 16.0, fontWeight: FontWeight.w600)),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: blue,
              shape: (RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              primary: milk,
              textStyle: TextStyle(color: milk, fontSize: 16, fontWeight: FontWeight.w400))),
      textTheme: TextTheme(
              headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              bodyText1: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
              bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54),
              caption: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              button: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: milk))
          .apply(fontFamily: "Mulish", bodyColor: milk, displayColor: scaffoldBackgroundColor));
}

ThemeData darkMyTheme() {
  return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      primaryColor: Colors.white,
      iconTheme: IconThemeData(color: milk),
      appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: milk), elevation: 0, backgroundColor: Colors.white),
      textSelectionTheme: TextSelectionThemeData(cursorColor: milk, selectionHandleColor: milk),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide(width: 0, style: BorderStyle.none)),
          filled: true,
          fillColor: textInputBgColorDark,
          contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
          labelStyle: TextStyle(fontWeight: FontWeight.w400, color: milk),
          hintStyle: TextStyle(color: milk, fontSize: 16.0, fontWeight: FontWeight.w600)),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: blueDarkMode,
              shape: (RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 0.8))),
      buttonTheme: ButtonThemeData(height: 48.0),
      textTheme: TextTheme(
              headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              bodyText1: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
              bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white54),
              caption: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              button: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: milk))
          .apply(fontFamily: "Mulish", bodyColor: milk, displayColor: milk));
}
