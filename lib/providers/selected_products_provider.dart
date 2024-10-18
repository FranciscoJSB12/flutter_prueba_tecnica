import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_prueba_tecnica/models/selected_product.dart';

class SelectedProductsNotifier extends StateNotifier<List<SelectedProduct>> {
  SelectedProductsNotifier() : super([]);

  void addProductToCart(SelectedProduct newProduct) {
    final isProductInCart = state.any(
      (product) =>
          newProduct.name == product.name &&
          newProduct.size == product.size &&
          newProduct.color == product.color,
    );

    if (!isProductInCart) {
      state = [...state, newProduct];
    }
  }

  void removeProductFromCart(String id) {
    state = state.where((product) => product.id != id).toList();
  }

  void increaseAmountInCart(String id) {
    state = state.map((product) {
      if (product.id == id) {
        return product.copyWith(quantity: product.quantity + 1);
      }

      return product;
    }).toList();
  }

  void decreaseAmountInCart(String id) {
    state = state.map((product) {
      if (product.id == id && product.quantity > 1) {
        return product.copyWith(quantity: product.quantity - 1);
      }

      return product;
    }).toList();
  }
}

final selectedProductProvider =
    StateNotifierProvider<SelectedProductsNotifier, List<SelectedProduct>>(
        (ref) {
  return SelectedProductsNotifier();
});
