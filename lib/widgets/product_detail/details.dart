import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/models/product.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/basic_product_data.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/color_selector.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/size_selector.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: double.infinity,
              ),
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BasicProductData(
                price: product.price,
                review: product.review,
                reviewsNumber: product.reviewsNumber,
              ),
              const SizedBox(
                height: 30,
              ),
              const SizeSelector(),
              const SizedBox(
                height: 20,
              ),
              const ColorSelector(),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {},
                child: const Text('Add to Cart'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
