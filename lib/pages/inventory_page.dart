import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/inventory_tile.dart';
import '../models/inventory.dart';
import '../models/inventory_data.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryData>(builder: (context, value, child) => Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: 70,
        leading: const Icon(Icons.hourglass_empty_outlined, size:40),
        actions: const [
          Icon(Icons.person_2_outlined, size: 30),
          Icon(Icons.notifications_sharp, size: 30),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: 
                Text("Inventory", style: TextStyle(fontSize: 42),),
          ),

          ListView.builder(
          shrinkWrap: true,
          itemCount: 1,
          padding: const EdgeInsets.only(left:0, top: 15, bottom: 20),
          itemBuilder: (context,count){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextButton(onPressed: (){}, 
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              color: Colors.grey.withOpacity(0.1)),
              child: const Row(
                  children: [
                  Icon(Icons.settings, color: Colors.black,),
                ],
              ),
            )),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.withOpacity(0.1)),
              child: TextButton(
                onPressed: (){},
               child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.calendar_today_outlined, color: Colors.black),
                  Text("Month", style: TextStyle(color: Colors.black)),
                  Icon(Icons.expand_more_outlined, color: Colors.black)
                ],
              )),
            ),
                      
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.withOpacity(0.1)),
              child: TextButton(onPressed: (){},
               child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home_outlined, color: Colors.black),
                  Text("Storage", style: TextStyle(color: Colors.black),),
                  Icon(Icons.expand_more_outlined, color: Colors.black)
                ],
              )),
            ),
                      ],
                    );
          }),
  
          Expanded(
            child: ListView.builder(
             itemCount: 2,
             itemBuilder: (context, index) {
               Inventory inventory = value.getInventoryList()[index]; 
               return InventoryTile(inventory: inventory,);
             },
             ),
          ),
        ],
      ),

      
    )
    );
  }
}