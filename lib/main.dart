import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/screens/products_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          actions: const [
            Icon(
              Icons.search_rounded,
              size: 24,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              size: 24,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        drawer: const Drawer(),
        body: const ProductsScreen(),
      ),
    ),
  );
}
