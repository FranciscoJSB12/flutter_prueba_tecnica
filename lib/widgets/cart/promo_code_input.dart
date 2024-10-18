import 'package:flutter/material.dart';

const kColorInput = Color.fromARGB(255, 163, 155, 155);

class PromoCodeInput extends StatelessWidget {
  const PromoCodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Apply Promo Code',
          hintStyle: const TextStyle(
            fontSize: 14,
            color: kColorInput,
          ),
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: kColorInput,
          )),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kColorInput,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: kColorInput,
            ),
          ),
        ),
      ),
    );
  }
}
