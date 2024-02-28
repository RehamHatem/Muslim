import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{

  static Color primaryColor=Color(0xffB7935F);
  static Color secondaryColor=Colors.black;

  static ThemeData light=ThemeData(
scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme(
      brightness:Brightness.light ,
      background: Colors.transparent,
      error: Colors.red,
      onBackground: Colors.white,
      onError: Colors.white ,
      onPrimary: Colors.white,
      onSecondary: Colors.white ,
      onSurface: secondaryColor,
      primary:primaryColor ,
      secondary:secondaryColor ,
      surface: Colors.white ,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(color: secondaryColor, size: 30),
      elevation:0,
      titleTextStyle: GoogleFonts.elMessiri(
        color: secondaryColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: secondaryColor,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    ),
    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),bodySmall: GoogleFonts.elMessiri(
      fontSize: 30,
      fontWeight: FontWeight.w300,
      color: secondaryColor,
    ),


    )
  );


  static Color primaryDarkColor = Color(0xFF141A2E);
  static Color yellowColor=Colors.yellow;
  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: primaryDarkColor,
        onPrimary: Colors.white,
        secondary: yellowColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Colors.transparent,
        onBackground: primaryDarkColor,
        surface: Colors.white,
        onSurface: Colors.white),
    textTheme: TextTheme(
      bodyLarge:
      GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold),
      bodyMedium:
      GoogleFonts.aBeeZee(fontSize: 25, fontWeight: FontWeight.w500),
      bodySmall:
      GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w300),
    ),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation:0,
        iconTheme: IconThemeData(size: 30, color: Colors.white),
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryDarkColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
    ),
  );
}