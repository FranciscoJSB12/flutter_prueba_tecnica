import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/models/product.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/details.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/product_image.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ProductImage(imageUrl: product.imageUrl),
            Details(
              product: product,
            ),
          ],
        ),
      ),
    );
  }
}
