import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

    return SingleChildScrollView(
      child: Column(
        children: [
          ...products.map(
            (product) {
              return Container(
                padding: const EdgeInsets.all(8),
                height: 280,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      width: 160,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: Image.network(
                          product.imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Size ${product.size}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Є ${product.price}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
