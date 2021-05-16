import 'package:flutter/material.dart';
import 'package:proj_1/pages/login_page.dart';

import './pages/hello_rectangle.dart';

void main() {
  print('hello world');
  runApp(
    MaterialApp(
      // Debug stamp
      debugShowCheckedModeBanner: false,

      // Dark mode
      themeMode: ThemeMode.system,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(brightness: Brightness.dark),

      // At launch
      initialRoute: '/home',

      // Route
      routes: {
        // App main home like root
        "/": (context) => LoginPage(),
        "/home": (context) => LoginPage(),
        "/test": (context) => HelloRectangle(),
      },
    ),
  );
}
