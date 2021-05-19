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
        child: (CatalogModels.items != null && CatalogModels.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // Item in each row
                  crossAxisCount: 2,
                  // Item spacing vartical
                  mainAxisSpacing: 5,
                  // Item spacing horizontal
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModels.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridTile(
                          header: Container(
                            child: Text(
                              item.name,
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(color: Colors.blue),
                          ),
                          child: Image.network(item.image),
                          footer: Container(
                            child: Text(
                              item.price.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                        ),
                      ));
                },
                itemCount: CatalogModels.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),

      // Side drawer
      drawer: MyDrawer(),
    );
  }
}
