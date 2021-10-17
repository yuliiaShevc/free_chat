import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'constants/colors.dart';

ThemeData lightMyTheme() {
  var errorInputBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide(width: 1.0, color: Colors.red));
  return ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
      appBarTheme:
          AppBarTheme(iconTheme: IconThemeData(color: scaffoldBackgroundColor), elevation: 0, backgroundColor: Colors.white),
      textSelectionTheme: TextSelectionThemeData(cursorColor: blue, selectionHandleColor: blue),
      buttonTheme: ButtonThemeData(height: 52.0),
      inputDecorationTheme: InputDecorationTheme(
          focusedErrorBorder: errorInputBorder,
          errorBorder: errorInputBorder,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide(width: 0, style: BorderStyle.none)),
          filled: true,
          fillColor: milk,
          errorStyle: TextStyle(color: Colors.red, fontSize: 16.0, fontWeight: FontWeight.w400),
          contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
          hintStyle: TextStyle(color: hintTextColorLight, fontSize: 16.0, fontWeight: FontWeight.w600)),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: blue,
              shape: (RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              primary: milk,
              textStyle: TextStyle(color: milk, fontSize: 16.0, fontWeight: FontWeight.w400))),
      textTheme: TextTheme(
              headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),
              headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
              headline4: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              caption: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
              button: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: milk))
          .apply(fontFamily: "Mulish", bodyColor: milk, displayColor: scaffoldBackgroundColor));
}

ThemeData darkMyTheme() {
  return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      primaryColor: Colors.white,
      iconTheme: IconThemeData(color: milk),
      appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: milk), elevation: 0, backgroundColor: scaffoldBackgroundColor),
      textSelectionTheme: TextSelectionThemeData(cursorColor: milk, selectionHandleColor: milk),
      inputDecorationTheme: InputDecorationTheme(
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide(width: 1.0, color: Colors.red)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide(width: 1.0, color: Colors.red)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide(width: 0, style: BorderStyle.none)),
          filled: true,
          fillColor: textInputBgColorDark,
          contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
          hintStyle: TextStyle(color: milk.withOpacity(0.6), fontSize: 16.0, fontWeight: FontWeight.w600)),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: blueDarkMode,
              shape: (RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              textStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, letterSpacing: 0.8))),
      buttonTheme: ButtonThemeData(height: 48.0),
      textTheme: TextTheme(
              headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),
              headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
              headline4: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              caption: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
              button: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: milk))
          .apply(fontFamily: "Mulish", bodyColor: milk, displayColor: milk));
}
