import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/constans/available_colors.dart';
import 'package:flutter_prueba_tecnica/models/available_color.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({super.key});

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  AvailableColor selectedColor = availableColors[0];

  void selectColor(AvailableColor color) {
    setState(() {
      selectedColor = color;
    });
  }

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
                  'Select color:',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(selectedColor.name),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...availableColors.map((availableColor) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () => selectColor(availableColor),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: availableColor.color,
                        ),
                        child: Center(
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedColor.name == availableColor.name
                                  ? Colors.white
                                  : availableColor.color,
                            ),
                          ),
                        ),
                      ),
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
