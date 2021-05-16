import 'package:flutter/material.dart';

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int num = 30;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('P1'),
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
      drawer: Drawer(),
    );
  }
}
