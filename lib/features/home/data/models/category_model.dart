import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final DateTime createdAt;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.createdAt, 
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    imageUrl: json['image_url'] as String,
    createdAt: DateTime.parse(json['created_at'] as String),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'image_url': imageUrl,
    'created_at': createdAt.toIso8601String(),
  };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, name, description, imageUrl, createdAt];
}
