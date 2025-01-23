import 'dart:math';

import 'package:flutter/material.dart';
import 'package:inventory/util/dialog_box.dart';
import 'package:inventory/util/item_tile.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});
  

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final _controller = TextEditingController();
  final _nameController = TextEditingController();
  final _categoryController = TextEditingController();
  final _priceController = TextEditingController();


  var intValue = Random().nextInt(10);


  List itemList = [
    ["Camera","Electronics", "3251489", "28.99", false],
    ["iPhone","Electronics", "3251511", "1124.99", false],
    
  ];

  void checkBoxChanged(bool?value, int index) {
    setState(() {
      itemList[index][4] = !itemList[index][4];
    });
  }

  void saveNewItem() {
    setState(() {
      itemList.add([_nameController.text, _categoryController.text, "$intValue", _priceController.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewItem() {
    showDialog(context: context, builder:(context) {
      return DialogBox(
        controller: _controller,
        nameController: _nameController,
        categoryController: _categoryController,
        priceController: _priceController,
        onSave: saveNewItem,
        onCancel: () => Navigator.of(context).pop(),
      );
    });
  }

  void deleteItem(int index) {
    setState(() {
      itemList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        toolbarHeight: 80,
        leading: IconButton(onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Text("Quoting"),
        actions: [
          FloatingActionButton(onPressed: () {} ,
          child: const Icon(Icons.more_horiz_outlined,))
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewItem,
      child: const Icon(Icons.add),),      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: 
                Text("Items", style: TextStyle(fontSize: 42),),
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
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: itemList.length,
            itemBuilder:(context, index) {
              return ItemTile(
              itemName: itemList[index][0],
              itemCategory: itemList[index][1],
              itemId: itemList[index][2],
              itemPrice: itemList[index][3],
              itemSelected: itemList[index][4],
              onChanged: (value) => checkBoxChanged(value, index),
              deleteFunction: (context) => deleteItem(index),);
              
            },),
          )
          

      
        ],
      ),

      
    );
    
  }
}