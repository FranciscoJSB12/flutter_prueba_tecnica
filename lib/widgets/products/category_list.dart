import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/constans/available_categories.dart';
import 'package:flutter_prueba_tecnica/widgets/products/category_button.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  String selectedCategory = availableCategories[1];

  void selectCategory(String text) {
    setState(() {
      selectedCategory = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...availableCategories.map((category) {
            return CategoryButton(
              text: category,
              isButtonActive: category == selectedCategory,
              selectCategory: selectCategory,
            );
          })
        ],
      ),
    );
  }
}
