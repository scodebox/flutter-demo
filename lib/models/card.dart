import 'package:proj_1/models/catalog.dart';

class CardModel {
  // catalog fields
  CatalogModels _catalog;
  // Collection of IDs  - store IDs of each item
  final List<int> _itemIds = [];

  // get catalog
  CatalogModels get catalog => _catalog;

  // set catalog
  set catalog(CatalogModels newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // get total price
  num get totalPrice =>
      items.fold(0, (total, currentItem) => total + currentItem.price);

  // add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
