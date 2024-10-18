import 'package:flutter/material.dart';
import 'package:flutter_prueba_tecnica/providers/selected_products_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_prueba_tecnica/models/selected_product.dart';
import 'package:flutter_prueba_tecnica/widgets/cart/cart_button.dart';

class CartItem extends ConsumerStatefulWidget {
  const CartItem({super.key, required this.product});

  final SelectedProduct product;

  @override
  ConsumerState<CartItem> createState() => _CartItemState();
}

class _CartItemState extends ConsumerState<CartItem> {
  void addProduct() {
    ref
        .read(selectedProductProvider.notifier)
        .increaseAmountInCart(widget.product.id);
  }

  void removeProduct() {
    ref
        .read(selectedProductProvider.notifier)
        .decreaseAmountInCart(widget.product.id);
  }

  void deleteFromCart() {
    ref
        .read(selectedProductProvider.notifier)
        .removeProductFromCart(widget.product.id);
  }

  @override
  Widget build(BuildContext context) {
    int amount = ref
        .watch(selectedProductProvider)
        .firstWhere((product) => product.id == widget.product.id)
        .quantity;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      height: 280,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            width: 160,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: Image.network(
                widget.product.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Size ${widget.product.size}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w200, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Є${widget.product.price}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        CartButton(
                            icon: Icons.remove, onPressed: removeProduct),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            amount.toString(),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        CartButton(icon: Icons.add, onPressed: addProduct),
                        const Spacer(),
                        IconButton(
                          onPressed: () => deleteFromCart(),
                          icon: const Icon(Icons.close),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
