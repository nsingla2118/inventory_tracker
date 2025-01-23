import 'dart:collection';

import 'package:flutter/material.dart';

const List<String> list = <String>['Paid', 'Unpaid'];

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

typedef MenuEntry = DropdownMenuEntry<String>;

class _DropDownState extends State<DropDown> {
  static final List<MenuEntry> menuEntries = UnmodifiableListView<MenuEntry>
  (
    list.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
  );
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: null,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      
      dropdownMenuEntries: menuEntries,
    );
  }
}