class SelectedProduct {
  const SelectedProduct({
    required this.id,
    required this.name,
    required this.price,
    required this.size,
    required this.color,
    required this.imageUrl,
    required this.quantity,
  });

  final String id;
  final String name;
  final String size;
  final double price;
  final String color;
  final String imageUrl;
  final int quantity;

  SelectedProduct copyWith({
    String? id,
    String? name,
    String? size,
    double? price,
    String? color,
    String? imageUrl,
    int? quantity,
  }) {
    return SelectedProduct(
      id: id ?? this.id,
      name: name ?? this.name,
      size: size ?? this.size,
      price: price ?? this.price,
      color: color ?? this.color,
      imageUrl: imageUrl ?? this.imageUrl,
      quantity: quantity ?? this.quantity,
    );
  }
}
