import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final int id;
  final int categoryId;
  final String name;
  final String description;
  final int price;
  final String imageUrl;
  final int? orderCount;
  final bool? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProductModel({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.orderCount,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json['id'] as int,
    categoryId: json['category_id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    price: json['price'] as int,
    imageUrl: json['image_url'] as String,
    orderCount: json['order_count'] as int?,
    isActive: json['is_active'] as bool?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'category_id': categoryId,
    'name': name,
    'description': description,
    'price': price,
    'image_url': imageUrl,
    'order_count': orderCount,
    'is_active': isActive,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };

  @override
  List<Object?> get props {
    return [
      id,
      categoryId,
      name,
      description,
      price,
      imageUrl,
      orderCount,
      isActive,
      createdAt,
      updatedAt,
    ];
  }
}
