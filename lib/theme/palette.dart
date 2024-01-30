import 'package:flutter/material.dart';

class Palette {
  // Colors
  static const blackColor = Color.fromRGBO(1, 1, 1, 1); // primary color
  static const greyColor = Color(0xFF979DAA); // secondary color
  static const greyDarkColor = Color(0xFF646D80); // secondary color
  static const greyMediumColor = Color(0xFFCFD2D8); // secondary color
  static const dividerColor = Color(0xFFF4F4F6); // secondary color

  static const greenColor = Color(0xFFE9F3EC); // secondary color
  static const blueColor = Color(0xFF2071EE); // secondary color
  static const pinkColor = Color(0xFFF92270); // secondary color
  static const lightRedColor = Color(0xFFFFE1E1); // secondary color
  static const redColor = Color(0xFFFF6767); // secondary color
  static const yellowColor = Color(0xFFF0B90B); // secondary color

  static const greenLightColor = Color(0xFF58BB47); // secondary color

  static const greenDarkColor = Color(0xFF248444); // secondary color
  static const purpleColor = Color(0xFF991FF9); // secondary color

  static const drawerColor = Color.fromRGBO(18, 18, 18, 1);
  static const whiteColor = Colors.white;


  // Themes
  static var darkModeAppTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: blackColor,
    cardColor: greyColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: drawerColor,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: drawerColor,
    ),
    primaryColor: redColor,
    canvasColor: Colors.white,
    backgroundColor: drawerColor, //
// will be used as alternative background color
  );

  static var lightModeAppTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: whiteColor,
    cardColor: greyColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: whiteColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: blackColor,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: whiteColor,
    ),
    primaryColor: redColor,
    backgroundColor: whiteColor,
    canvasColor: Colors.white,

  );
}