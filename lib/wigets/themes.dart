import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme() => ThemeData(
        primarySwatch: Colors.blue,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,

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
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      );
}
