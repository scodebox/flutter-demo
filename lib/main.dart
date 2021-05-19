import 'package:flutter/material.dart';
import 'package:proj_1/pages/cart.dart';
import 'package:proj_1/pages/login_page.dart';
import 'package:proj_1/wigets/themes.dart';

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
      theme: MyTheme.lightTheme(),
      darkTheme: MyTheme.darkTheme(),

      // At launch
      initialRoute: MyRoute.homeRoute,

      // Route
      routes: {
        // App main home like root
        "/": (context) => LoginPage(),
        MyRoute.loginRoute: (context) => LoginPage(),
        MyRoute.homeRoute: (context) => Home(),
        MyRoute.cartRoute: (context) => Cart(),
        MyRoute.testRoute: (context) => HelloRectangle(),
      },
    ),
  );
}
