import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_prueba_tecnica/widgets/products/category_list.dart';
import 'package:flutter_prueba_tecnica/widgets/products/discount_card.dart';
import 'package:flutter_prueba_tecnica/widgets/products/products_list.dart';
import 'package:flutter_prueba_tecnica/screens/cart_screen.dart';

class ProductsScreen extends ConsumerWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          actions: [
            const Icon(
              Icons.search_rounded,
              size: 24,
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const CartScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.shopping_bag_outlined,
                size: 24,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        drawer: const Drawer(),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Find Your Clothes',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              DiscountCard(
                discountDuration: 'Dec 16 - Dec 31',
                discountPercentage: '25% Off',
                placeholderText: 'Super Discount',
                buttonText: 'Grab now',
                imageUrl:
                    'https://rickandmortyapi.com/api/character/avatar/10.jpeg',
              ),
              CategoryList(),
              SizedBox(
                height: 20,
              ),
              ProductsList(),
            ],
          ),
        ),
      ),
    );
  }
}
