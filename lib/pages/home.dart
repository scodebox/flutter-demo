import 'package:flutter/material.dart';
import '../wigets/drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Center(child: Text('Hello world!')),
      ),
      drawer: MyDrawer(),
    );
  }
}
