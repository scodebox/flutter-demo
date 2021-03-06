import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:proj_1/models/catalog.dart';
import 'package:proj_1/util/my_routes.dart';
import 'package:proj_1/wigets/home_widgets/catalog_header.dart';
import 'package:proj_1/wigets/home_widgets/catalog_list.dart';
import 'package:http/http.dart' as http;
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

    // HTTP API
    final URL = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(Uri.parse(URL));
    print(response.body);

    // state update
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Test
    // final dummyList = List.generate(50, (index) => CatalogModels.items[0]);

    return Scaffold(
      backgroundColor: context.cardColor,
      // // Without velocity
      // backgroundColor: Theme.of(context).cardColor,
      // Leave status bar.
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoute.cartRoute),
        child: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
        ),
        backgroundColor: context.theme.buttonColor,
      ).badge(
        color: Vx.red500,
        size: 20,
        count: 3,
      ),
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
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
