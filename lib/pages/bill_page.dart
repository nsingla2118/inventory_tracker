import 'package:flutter/material.dart';

class BillPage extends StatelessWidget {
  const BillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        toolbarHeight: 80,
        leading: IconButton(onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Text("Billing"),
        actions: [
          FloatingActionButton(onPressed: () {} ,
          child: const Icon(Icons.more_horiz_outlined,))
        ],
      ),
    );
  }
}