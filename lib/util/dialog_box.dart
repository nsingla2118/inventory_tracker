

import 'package:flutter/material.dart';
import 'package:inventory/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final nameController;
  final categoryController;
  final priceController;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key, required this.nameController, required this.categoryController, required this.priceController, required this.onSave, required this.onCancel, required TextEditingController controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).primaryColor,
      content: SizedBox(
        height:  MediaQuery.of(context).size.height * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new Item"),
          ),
          TextField(
            controller: categoryController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add Item Category"),
          ),
          TextField(
            controller: priceController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add Item Price"),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(text: "Save", onPressed: onSave),
              const SizedBox(width: 10,),
              MyButton(text: "Cancel", onPressed: onCancel),
            ],
          )

        ],),
        ),
    );
  }
}