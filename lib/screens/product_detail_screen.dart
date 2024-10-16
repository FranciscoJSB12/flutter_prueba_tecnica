import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/product_image.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ProductImage(imageUrl: imageUrl),
          ],
        ),
      ),
    );
  }
}
