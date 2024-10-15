import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/widgets/products/product_item.dart';

const List<String> dummyProducts = [
  'https://rickandmortyapi.com/api/character/avatar/10.jpeg',
  'https://rickandmortyapi.com/api/character/avatar/11.jpeg',
  'https://rickandmortyapi.com/api/character/avatar/12.jpeg',
  'https://rickandmortyapi.com/api/character/avatar/13.jpeg',
  'https://rickandmortyapi.com/api/character/avatar/14.jpeg',
];

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dummyProducts.length,
        itemBuilder: (BuildContext ctx, int index) {
          return ProductItem(
            imageUrl: dummyProducts[index],
            name: 'Mittens Stylish Jacket',
            price: '\$149.99',
          );
        },
      ),
    );
  }
}
