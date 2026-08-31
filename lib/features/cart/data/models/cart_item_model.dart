import 'package:wassel/features/home/data/models/product_model.dart';

class CartItemModel {
  final ProductModel productModel;
  final String totalQuantityPrice;
  int quantity;

  CartItemModel({
    required this.totalQuantityPrice,
    required this.productModel,
    this.quantity = 1,
  });
}
