import 'package:flutter/material.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({
    super.key,
    this.left,
    this.right,
    required this.onPressed,
    required this.icon,
  });

  final double? left;
  final double? right;
  final Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Widget container = Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );

    if (right != null) {
      return Positioned(top: 20, right: right, child: container);
    }

    return Positioned(top: 20, left: left, child: container);
  }
}
