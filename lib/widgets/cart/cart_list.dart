import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_prueba_tecnica/widgets/cart/cart_item.dart';
import 'package:flutter_prueba_tecnica/providers/selected_products_provider.dart';

class CartList extends ConsumerStatefulWidget {
  const CartList({super.key});

  @override
  ConsumerState<CartList> createState() => _CartListState();
}

class _CartListState extends ConsumerState<CartList> {
  @override
  Widget build(BuildContext context) {
    final products = ref.watch(selectedProductProvider);

    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.55,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...products.map(
              (product) {
                return CartItem(product: product);
              },
            )
          ],
        ),
      ),
    );
  }
}
