class Product {

  int? id;
  String? title;
  double? price;
  String? description;
  String? image;

  Product({
    this.id,
    this.title,
    this.price,
    this.description,
    this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {

    return Product(
      id: json['id'],
      title: json['title'],
      price: (json['price'] as num).toDouble(),
      description: json['description'],
      image: json['image'],
    );
  }
}