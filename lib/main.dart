import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory/models/inventory_data.dart';
import 'package:inventory/pages/home_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => InventoryData(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: _buildTheme(Brightness.light),
        
      ),
      );
  }
   ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.urbanistTextTheme(baseTheme.textTheme),
  );
}
 

}
