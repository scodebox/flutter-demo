import 'package:flutter/material.dart';
import 'package:proj_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

import './pages/hello_rectangle.dart';
import './pages/home.dart';
import './util/my_routes.dart';

void main() {
  print('hello world');
  runApp(
    MaterialApp(
      // Debug stamp
      debugShowCheckedModeBanner: false,

      // Dark mode
      themeMode: ThemeMode.system,

      // Theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,

        // app bar theme
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),

      // At launch
      initialRoute: MyRoute.homeRoute,

      // Route
      routes: {
        // App main home like root
        "/": (context) => LoginPage(),
        MyRoute.loginRoute: (context) => LoginPage(),
        MyRoute.homeRoute: (context) => Home(),
        MyRoute.testRoute: (context) => HelloRectangle(),
      },
    ),
  );
}
