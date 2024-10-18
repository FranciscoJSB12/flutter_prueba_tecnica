import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/widgets/cart/cart_list.dart';
import 'package:flutter_prueba_tecnica/widgets/cart/promo_code_input.dart';
import 'package:flutter_prueba_tecnica/widgets/cart/total_calculator.dart';

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
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [CartList(), PromoCodeInput(), TotalCalculator()],
            ),
          ),
        ),
      ),
    );
  }
}
