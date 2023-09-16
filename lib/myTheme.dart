import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xffB7935F);
  static Color primaryDark = Color(0xff141A2E);
  static Color black = Color(0xff242424);
  static Color white = Color(0xffffffff);
  static Color yellowColor = Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
    canvasColor: primaryLight,
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: black,
      unselectedItemColor: white,
    ),
    textTheme: TextTheme(
      titleLarge:
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: black),
      titleMedium:
          TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: black),
      titleSmall:
          TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color: black),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    canvasColor: primaryDark,
    primaryColor: primaryDark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor: white,
    ),
    textTheme: TextTheme(
      titleLarge:
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: white),
      titleMedium:
          TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: white),
      titleSmall: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w300, color: yellowColor),
    ),
  );
}
