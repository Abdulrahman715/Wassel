import 'package:equatable/equatable.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

class CartItemModel extends Equatable {
  final int id;
  final ProductModel productModel;
  final int quantity;

  const CartItemModel({
    this.quantity = 1,
    required this.productModel,
    required this.id,
  });

  CartItemModel copyWith({int? quantity}) {
    return CartItemModel(
      id: id,
      productModel: productModel,
      quantity: quantity?? this.quantity,
    );
  }

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
    id: json['id'] as int,
    productModel: json['product_model'] as ProductModel,
    quantity: json['quantity'] as int,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'product_model': productModel,
    'quantity': quantity,
  };

  @override
  List<Object?> get props {
    return [id, productModel, quantity];
  }
}
