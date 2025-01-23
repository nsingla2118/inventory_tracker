// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          tabBackgroundColor: Colors.white,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBorderRadius: 15,
          padding: const EdgeInsets.all(10),
          tabMargin: const EdgeInsets.all(10),
          iconSize: 26,
          backgroundColor: Colors.transparent,
          tabBackgroundGradient: const LinearGradient(colors: [
            Color.fromARGB(255, 149, 148, 148), Colors.white
          ]),
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
        
            GButton(icon: Icons.window),
            GButton(icon: Icons.home),
            GButton(icon: Icons.paste_outlined),
            GButton(icon: Icons.shopping_bag_outlined),
            GButton(icon: Icons.calendar_today_outlined),
            
        ],
        ),
      ),
    );
  }
}