import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/custom_app_bar_button.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        CustomAppBarButton(
          left: 20,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icons.arrow_back,
        ),
        CustomAppBarButton(
          right: 100,
          onPressed: () {},
          icon: Icons.favorite_border,
        ),
        CustomAppBarButton(
          right: 20,
          onPressed: () {},
          icon: Icons.arrow_upward_outlined,
        ),
      ],
    );
  }
}
