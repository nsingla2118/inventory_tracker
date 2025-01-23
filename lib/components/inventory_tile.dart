import 'package:flutter/material.dart';
import 'package:inventory/models/inventory.dart';

// ignore: must_be_immutable
class InventoryTile extends StatelessWidget {
  Inventory inventory;
  InventoryTile({super.key, required this.inventory});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: inventory.color,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.only(top:8.0, left:15.0, bottom: 8.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(inventory.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              FloatingActionButton(
                shape: const CircleBorder(),
                elevation: 1,
                backgroundColor: Colors.transparent,                
                onPressed: (){},
                child: const Icon(Icons.tune_outlined),
              ),
            ],
          ),
        ),
      ],),
    );
  }
}