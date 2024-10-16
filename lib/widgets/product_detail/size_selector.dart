import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/constans/available_sizes.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({
    super.key,
    required this.selectSize,
    required this.selectedSize,
  });

  final Function(String size) selectSize;
  final String selectedSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                const Text(
                  'Size:',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(selectedSize),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...availableSizes.map((size) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10, bottom: 5),
                    child: ElevatedButton(
                      onPressed: () => selectSize(size),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: size == selectedSize
                            ? const Color.fromARGB(255, 253, 183, 77)
                            : Colors.white,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                      ),
                      child: Text(size),
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
