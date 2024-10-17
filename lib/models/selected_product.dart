class SelectedProduct {
  const SelectedProduct({
    required this.id,
    required this.name,
    required this.price,
    required this.size,
    required this.color,
    required this.imageUrl,
  });

  final int id;
  final String name;
  final String size;
  final double price;
  final String color;
  final String imageUrl;
}
