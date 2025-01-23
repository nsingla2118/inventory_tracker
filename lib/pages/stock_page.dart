import 'package:flutter/material.dart';
import 'package:inventory/util/drop_down.dart';

class StockPage extends StatelessWidget {
  const StockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        toolbarHeight: 80,
        leading: IconButton(onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Text("Order"),
        actions: [
          FloatingActionButton(onPressed: () {} ,
          child: const Icon(Icons.more_horiz_outlined,))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Orders", style: TextStyle(fontSize: 42),),
          ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            showCheckboxColumn: true,
            columns: const <DataColumn>[
            DataColumn(label: Text("Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),),
            DataColumn(label: Text("itemName", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),),
            DataColumn(label: Text("Quantity", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),),
            DataColumn(label: Text("Status", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),),
            DataColumn(label: Text("Action", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),),
          ],
            rows: const <DataRow>[
              DataRow(cells: [
                DataCell(Text("Param")),
                DataCell(Text("Camera")),
                DataCell(Text("1")),
                DataCell(DropDown()),
                DataCell(Icon(Icons.picture_as_pdf)),
              ])
            ],
           ),
        )
      
        ],

      ),
      

      
    );
  }
}