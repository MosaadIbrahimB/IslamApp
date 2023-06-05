
import 'package:flutter/material.dart';

class MyTheme {
  static Color lightPrimary =const Color(0xffB7935F);
  static Color colorBlack = const Color(0xff242424);
  static Color colorWhite = const Color(0xffF8F8F8);
  static Color colorWhiteTransparant = const Color.fromRGBO(255, 255, 255, .8);


  static ThemeData themeLight = ThemeData(
    primaryColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:  AppBarTheme(
        iconTheme: IconThemeData(
          color: colorBlack,
        ),
        color: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: colorBlack,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: colorBlack
        ),
        titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: colorBlack
        ),

        bodyLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: colorBlack,

        ),




      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorBlack,
      selectedIconTheme:const IconThemeData(
        size: 40,
      ),
      unselectedIconTheme:const IconThemeData(
        size: 26,
      ),
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(fontSize: 18 ),
      unselectedLabelStyle: const TextStyle(fontSize: 16 ),

    ),

  );
}
