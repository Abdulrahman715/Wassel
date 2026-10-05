import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cartItem.productModel.name,
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            'الكمية: ${cartItem.quantity}',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4),
          Text(
            '${cartItem.productModel.price * cartItem.quantity} ج.م',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
