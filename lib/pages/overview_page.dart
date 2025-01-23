import 'package:flutter/material.dart';


class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        toolbarHeight: 80,
        leading: IconButton(onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Text("Overview"),
        actions: [
          FloatingActionButton(onPressed: () {} ,
          child: const Icon(Icons.more_horiz_outlined,))
        ],
      ),

      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("Delivery is being tracked", style: TextStyle(fontSize: 42),),
            SizedBox(height: 25,),
           
            
          ],
        ),
      ),

      
    );
  }
}