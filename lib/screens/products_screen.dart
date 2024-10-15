import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/widgets/products/category_list.dart';
import 'package:flutter_prueba_tecnica/widgets/products/discount_card.dart';
import 'package:flutter_prueba_tecnica/widgets/products/products_list.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
          imageUrl: 'https://rickandmortyapi.com/api/character/avatar/10.jpeg',
        ),
        CategoryList(),
        SizedBox(
          height: 20,
        ),
        ProductsList(),
      ],
    );
  }
}
