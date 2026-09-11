import 'package:equatable/equatable.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

class CategoryModel extends Equatable {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final DateTime createdAt;
  final List<CategoryModel> subcategories;
  final List<ProductModel> products;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.createdAt,
    this.subcategories = const [],
    this.products = const [],
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    imageUrl: json['image_url'] as String,
    createdAt: DateTime.parse(json['created_at'] as String),
    subcategories: json['subcategories'] != null
        ? (json['subcategories'] as List)
              .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList()
        : [],
    products: json['products'] != null
        ? (json['products'] as List)
              .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList()
        : [],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'image_url': imageUrl,
    'created_at': createdAt.toIso8601String(),
    'subcategories': subcategories.map((e) => e.toJson()).toList(),
    'products': products.map((e) => e.toJson()).toList(),
  };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    imageUrl,
    createdAt,
    subcategories,
    products,
  ];
}
