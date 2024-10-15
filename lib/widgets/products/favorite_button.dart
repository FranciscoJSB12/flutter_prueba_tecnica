import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isProductFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isProductFavorite = !isProductFavorite;
        });
      },
      icon: !isProductFavorite
          ? const Icon(
              Icons.favorite_border,
              size: 28,
              color: Colors.black,
            )
          : const Icon(
              Icons.favorite,
              size: 28,
              color: Colors.black,
            ),
    );
  }
}
