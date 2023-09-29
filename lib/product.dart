class Product {
  final String name;
  final int category;
  final double price;
  final String pictureUrl;
  const Product(
      {required this.name,
      required this.category,
      required this.price,
      required this.pictureUrl});
  factory Product.fromJson(Map<String, dynamic> documentSnapshot) {
    final data = documentSnapshot;
    return Product(
      name: data["name"],
      category: data["category"],
      pictureUrl: data["pictureUrl"],
      price: data["price"],
    );
  }

  Map<String, Object> toJson() {
    return {
      "name": name,
      "category": category,
      "price": price,
      "pictureUrl": pictureUrl
    };
  }
}
