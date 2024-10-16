import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/widgets/products/product_item.dart';
import 'package:flutter_prueba_tecnica/data/products.dart';

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
            product: dummyProducts[index],
          );
        },
      ),
    );
  }
}
