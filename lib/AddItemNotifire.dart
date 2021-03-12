import 'package:flutter/material.dart';
import 'Item.dart';

class AdditemNotifire extends ChangeNotifier {
  List<Item> ItemList = [];
  //
  addItem(String ItemName) async {
    Item item = new Item(ItemName);
    ItemList.add(item);
    notifyListeners();
  }
}
