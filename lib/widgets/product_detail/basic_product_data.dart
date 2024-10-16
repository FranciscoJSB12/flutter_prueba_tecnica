import 'package:flutter/material.dart';

class BasicProductData extends StatelessWidget {
  const BasicProductData({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Text('\$149.99'),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          SizedBox(
            width: 10,
          ),
          Text('4.8'),
          SizedBox(
            width: 10,
          ),
          Text('(2.6K+ review)')
        ],
      ),
    );
  }
}
