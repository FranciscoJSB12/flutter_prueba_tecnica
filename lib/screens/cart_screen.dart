import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/widgets/cart/cart_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.55,
          child: const CartList(),
        ),
      ),
    );
  }
}
