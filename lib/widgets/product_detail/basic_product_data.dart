import 'package:flutter/material.dart';

class BasicProductData extends StatelessWidget {
  const BasicProductData({
    super.key,
    required this.price,
    required this.review,
    required this.reviewsNumber,
  });

  final double price;
  final String review;
  final String reviewsNumber;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Text('Є$price'),
          const SizedBox(
            width: 30,
          ),
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(review),
          const SizedBox(
            width: 10,
          ),
          Text('($reviewsNumber reviews)')
        ],
      ),
    );
  }
}
