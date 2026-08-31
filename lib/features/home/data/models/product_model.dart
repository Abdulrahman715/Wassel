
class ProductModel {
  final int id;
  final String name;
  final String image;
  final String weight;
  final double price;
  final String category;

  ProductModel({
    required this.id,
    // this.quantity = 0,
    required this.name,
    required this.image,
    required this.weight,
    required this.price,
    required this.category,
  });
}
