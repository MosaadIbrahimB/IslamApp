import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyTheme {

  static Color lightPrimary = const Color(0xffB7935F);
  static Color colorBlack = const Color(0xff242424);
  static Color colorWhite = const Color(0xffF8F8F8);
  static Color colorWhiteTransparant = const Color.fromRGBO(255, 255, 255, .8);


  // -------dark var theme--------------------------
  static Color darkPrimary = const Color(0xff141A2E);
  static Color yellow  = const Color(0xffFACC1D);


  // ++++++++++++++++++++lightTheme--------------------------++++++++++++++

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: colorBlack,
      ),
      color: Colors.transparent,
      centerTitle: true,
      elevation: 0,
    ),
    textTheme: TextTheme(
      displayLarge:GoogleFonts.elMessiri(
          color: colorBlack,
          fontSize: 30,
          fontWeight: FontWeight.bold,
      )

        ,
      displayMedium: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w400, color: colorBlack),
      titleMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w400, color: colorBlack),
      bodyLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: colorBlack,
      ),
      bodyMedium: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: colorBlack,
      ),
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: lightPrimary,
      ),


    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorBlack,
      selectedIconTheme: const IconThemeData(
        size: 40,
      ),
      unselectedIconTheme: const IconThemeData(
        size: 26,
      ),
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(fontSize: 18),
      unselectedLabelStyle: const TextStyle(fontSize: 16),
    ),
  );

//++++++++++++++++++++++++dark Theme-----------------------------------+++++++++++
  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: yellow,
      ),
      color: Colors.transparent,
      centerTitle: true,
      elevation: 0,
    ),
    textTheme: TextTheme(
      displayLarge:const TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w400,color:colorWhite ),
      titleMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w400, color: colorWhite),
      bodyLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: colorWhite,
      ),
      bodyMedium: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: colorWhite,
      ),
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: lightPrimary,
      ),
    ),


    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellow,
      selectedIconTheme: const IconThemeData(
        size: 40,
      ),
      unselectedIconTheme: const IconThemeData(
        size: 26,
      ),
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(fontSize: 18),
      unselectedLabelStyle: const TextStyle(fontSize: 16),
    ),
  );
}
