import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:proj_1/models/catalog.dart';
import 'package:proj_1/wigets/item_widget.dart';
import '../wigets/drawer.dart';

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
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    print(decodedData["products"]);
  }

  @override
  Widget build(BuildContext context) {
    // Test
    final dummyList = List.generate(50, (index) => CatalogModels.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        // custom

        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
      ),

      // like recyclerview
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          // itemCount: CatalogModels.items.length,

          // Test
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            // return ItemWidgets(item: CatalogModels.items[index]);

            // Test
            return ItemWidgets(item: dummyList[index]);
          },
        ),
      ),

      // Side drawer
      drawer: MyDrawer(),
    );
  }
}
