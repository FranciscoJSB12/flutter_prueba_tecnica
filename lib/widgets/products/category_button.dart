import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton(
      {super.key,
      required this.text,
      required this.isButtonActive,
      required this.selectCategory});

  final String text;
  final bool isButtonActive;
  final Function(String text) selectCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: !isButtonActive
          ? OutlinedButton(
              onPressed: () => selectCategory(text),
              child: Text(text),
            )
          : ElevatedButton(
              onPressed: () => selectCategory(text),
              child: Text(text),
            ),
    );
  }
}
