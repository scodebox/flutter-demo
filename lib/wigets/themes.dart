import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme() => ThemeData(
        primarySwatch: Colors.blue,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.white,
        canvasColor: lightBlueish,
        buttonColor: darkBlueish,
        accentColor: darkBlueish,

        // app bar theme
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          // textTheme: Theme.of(context).textTheme,
        ),
      );

  static ThemeData darkTheme() => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkcreamColor,
        buttonColor: Colors.purple.shade800,
        accentColor: Colors.white,

        // app bar theme
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          // textTheme: Theme.of(context).textTheme,
        ),
      );

  // Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color darkBlueish = Color(0xff403b58);
  static Color lightBlueish = Vx.blue400;
}
