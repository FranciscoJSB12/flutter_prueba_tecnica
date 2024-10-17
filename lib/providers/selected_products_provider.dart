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
}

final selectedProductProvider =
    StateNotifierProvider<SelectedProductsNotifier, List<SelectedProduct>>(
        (ref) {
  return SelectedProductsNotifier();
});
