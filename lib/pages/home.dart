import 'package:flutter/material.dart';
import '../wigets/drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        // custom

        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        child: Center(
            child: Text(
          'Hello world!',
          style: TextStyle(color: Colors.black),
        )),
      ),
      drawer: MyDrawer(),
    );
  }
}
