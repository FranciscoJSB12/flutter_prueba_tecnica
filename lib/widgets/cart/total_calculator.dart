import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_prueba_tecnica/providers/selected_products_provider.dart';
import 'package:flutter_prueba_tecnica/models/selected_product.dart';

class TotalCalculator extends ConsumerStatefulWidget {
  const TotalCalculator({super.key});

  @override
  ConsumerState<TotalCalculator> createState() => _TotalCalculatorState();
}

class _TotalCalculatorState extends ConsumerState<TotalCalculator> {
  double calculateTotal(List<SelectedProduct> products) {
    double total = 0;

    for (var product in products) {
      total += product.quantity * product.price;
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(selectedProductProvider);
    final total = calculateTotal(products);

    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Sub Total'),
              Text('Є${total.toStringAsFixed(2)}'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shipping'),
              Text('Є10'),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total'),
              Text('Є${total != 0 ? (total + 10).toStringAsFixed(2) : 0}'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(60),
            ),
            onPressed: () {},
            child: const Text('Checkout'),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
