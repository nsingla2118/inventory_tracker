import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ItemTile extends StatelessWidget {
  final String itemName;
  final String itemCategory;
  final String itemId;
  final String itemPrice;
  final bool itemSelected;

  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ItemTile({super.key,
   required this.itemName,
   required this.itemCategory,
   required this.itemId,
   required this.itemPrice,
   required this.itemSelected,
   required this.onChanged,
   required this.deleteFunction
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:5.0, top: 3, right: 5),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(),
         children:[ SlidableAction(onPressed: deleteFunction,
         icon: Icons.delete,
         backgroundColor: Colors.red.shade300,
         borderRadius: BorderRadius.circular(12),)
         ]),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: itemSelected ? Colors.yellow:Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                    value: itemSelected,
                    onChanged: onChanged,
                    activeColor: Colors.black12),
                    Text(itemCategory),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(itemId, style: const TextStyle(fontWeight: FontWeight.bold),),
                  Text(itemName, style: const TextStyle(fontSize: 20),),
                  Text(itemPrice)
                ],
              )
            ],
          ),
        
        ),
      ),
    );
  }
}