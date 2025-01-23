import 'package:flutter/material.dart';

import 'inventory.dart';

class InventoryData extends ChangeNotifier {
  List<Inventory>  inventoryTile = [
    Inventory(name: "Orders",
       color: Colors.yellow),
    Inventory(name: 'Stock',
       color: Colors.orange),
  ];

List<Inventory> userData = [

];

List<Inventory> getInventoryList() {
  return inventoryTile;
}

List<Inventory> getUserData() {
  return userData;
}

void addItemtoInventoryData(Inventory inventory) {
  userData.add(inventory);
  notifyListeners();
}

void removeItemFromInventoryData(Inventory inventory) {
  userData.remove(inventory);
  notifyListeners();
}




 
}
