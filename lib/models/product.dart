class Product {
  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.review,
    required this.reviewsNumber,
  });

  final int id;
  final String imageUrl;
  final String name;
  final double price;
  final String review;
  final String reviewsNumber;
}
