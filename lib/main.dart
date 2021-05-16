import 'package:flutter/material.dart';

import './pages/hello_rectangle.dart';

void main() {
  print('hello world');
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('P1'),
      ),
      body: HelloRectangle(),
      drawer: Drawer(),
    ),
  ));
}
