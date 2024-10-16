import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/models/selected_product.dart';
import 'package:flutter_prueba_tecnica/screens/cart_screen.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/basic_product_data.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/color_selector.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/size_selector.dart';
import 'package:flutter_prueba_tecnica/models/available_color.dart';
import 'package:flutter_prueba_tecnica/models/product.dart';
import 'package:flutter_prueba_tecnica/constans/available_sizes.dart';
import 'package:flutter_prueba_tecnica/constans/available_colors.dart';

class Details extends StatefulWidget {
  const Details({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String selectedSize = availableSizes[0];
  AvailableColor selectedColor = availableColors[0];

  void navigateToCart(BuildContext context) {
    var product = SelectedProduct(
      name: widget.product.name,
      price: widget.product.price,
      size: selectedSize,
      color: selectedColor.name,
    );

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => CartScreen(
          product: product,
        ),
      ),
    );
  }

  void selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  void selectColor(AvailableColor color) {
    setState(() {
      selectedColor = color;
    });
  }

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
                widget.product.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BasicProductData(
                price: widget.product.price,
                review: widget.product.review,
                reviewsNumber: widget.product.reviewsNumber,
              ),
              const SizedBox(
                height: 30,
              ),
              SizeSelector(
                selectedSize: selectedSize,
                selectSize: selectSize,
              ),
              const SizedBox(
                height: 20,
              ),
              ColorSelector(
                selectColor: selectColor,
                selectedColor: selectedColor,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () => navigateToCart(context),
                child: const Text('Add to Cart'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
