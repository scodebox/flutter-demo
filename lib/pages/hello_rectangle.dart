import 'package:flutter/material.dart';
import '../wigets/drawer.dart';

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int num = 30;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
        // backgroundColor: Colors.white,
        // elevation: 0.0,
      ),
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          height: 400.0,
          width: 300.0,
          child: Center(
            child: Text(
              'Hello ${num}',
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
      ),
    );
  }
}
