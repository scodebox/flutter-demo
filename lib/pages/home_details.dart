import 'package:flutter/material.dart';
import 'package:proj_1/models/catalog.dart';
import 'package:proj_1/wigets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetails extends StatelessWidget {
  final Item catalog;

  const HomeDetails({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red600.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.make(),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBlueish),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
            ).wh(100, 40),
          ],
        ).p32(),
      ),
      appBar: AppBar(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.bold
                        .color(MyTheme.darkBlueish)
                        .make(),
                    catalog.desc.text.xl.make(),
                    // space
                    10.heightBox,
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
