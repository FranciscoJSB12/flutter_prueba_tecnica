import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/screens/product_detail_screen.dart';
import 'package:flutter_prueba_tecnica/widgets/products/favorite_button.dart';
import 'package:flutter_prueba_tecnica/models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });

  final Product product;

  void navigateToDetails(BuildContext context, Product product) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ProductDetailScreen(
          product: product,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateToDetails(context, product),
      child: SizedBox(
        width: 220,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 280,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Image.network(
                        product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    right: 10,
                    child: FavoriteButton(),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                product.name,
                style: const TextStyle(fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                product.price,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
