import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/basic_product_data.dart';
import 'package:flutter_prueba_tecnica/widgets/product_detail/sizes_selector.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Text(
              'Mittens Stylish Jacket',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BasicProductData(),
            SizedBox(
              height: 30,
            ),
            SizesSelector()
          ],
        ),
      ),
    );
  }
}
