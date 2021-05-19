import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:proj_1/models/catalog.dart';
import 'package:proj_1/wigets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState ::::: Get the data and pass to the build
    super.initState();

    // get data
    loadData();
  }

  // may take time
  loadData() async {
    await Future.delayed(Duration(seconds: 2));

    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    // print(decodedData["products"]);

    CatalogModels.items = List.from(decodedData["products"])
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Test
    // final dummyList = List.generate(50, (index) => CatalogModels.items[0]);

    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      // Leave status bar.
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductHeader(),
              if (CatalogModels.items != null && CatalogModels.items.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Home".text.xl5.bold.color(MyTheme.darkBlueish).make(),
        "New products".text.xl2.make(),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModels.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModels.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(image: catalog.image),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.bold.color(MyTheme.darkBlueish).make(),
                catalog.desc.text.make(),
                // space
                10.heightBox,

                // buttons
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    ElevatedButton(
                      onPressed: () {},
                      child: "Buy".text.make(),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(MyTheme.darkBlueish),
                          shape: MaterialStateProperty.all(
                            StadiumBorder(),
                          )),
                    ),
                  ],
                ).pOnly(right: 10.0)
              ],
            ),
          )
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key key, @required this.image})
      : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .p8
        .rounded
        .color(MyTheme.creamColor)
        .make()
        .p16()
        .w40(context);
  }
}
