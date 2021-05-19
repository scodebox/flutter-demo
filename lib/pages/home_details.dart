import 'package:flutter/material.dart';
import 'package:proj_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetails extends StatelessWidget {
  final Item catalog;

  const HomeDetails({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Image.network(catalog.image)],
        ).p16(),
      ),
    );
  }
}
