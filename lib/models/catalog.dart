class CatalogModels {
  static List<Item> items;

  // get Item by id.
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // get Item by position
  Item getByPosition(int pos) => items[pos];

  // Test
  // static List<Item> items = [
  //   Item(
  //       id: 1,
  //       name: "iPhone 12",
  //       desc: "Apple iPhone 2021",
  //       price: 999,
  //       color: "#FFFF",
  //       image:
  //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  // ];

}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

  // set from the JSON
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  // like export to JSON
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
