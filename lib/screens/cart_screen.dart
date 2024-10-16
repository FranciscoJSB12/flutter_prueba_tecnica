import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/models/selected_product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, required this.product});

  final SelectedProduct product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Text('${product.name} ${product.price} ${product.size}'),
        ),
      ),
    );
  }
}
