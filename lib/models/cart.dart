import 'package:target/models/catalog.dart';

class CartModel{
  //Catalog Field
  late CatalogModel _catalog;

  //Collection of ID
  final List<int> _itemIds = [];
  //Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog){
    assert(newCatalog != null);
    _catalog = newCatalog;
  }
  //GEt Items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get Total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);


  //Add Item
  void add(Item item){
    _itemIds.add(item.id);
  }
  //Remove Item
  void remove (Item item){
    _itemIds.remove(item.id);
  }
}