import 'package:flutter/material.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';

class CartProductImage extends StatelessWidget {
  const CartProductImage({super.key, required this.item, required this.imageSrc});

  final CartItemModel item;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        imageSrc,
        fit: BoxFit.contain,
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.12,
        errorBuilder: (context, error, stackTrace) => Container(
          height: MediaQuery.of(context).size.height * 0.12,
          width: MediaQuery.of(context).size.width * 0.12,
          color: Colors.grey[300],
          child: const Icon(Icons.image_not_supported, color: Colors.grey),
        ),
      ),
    );
  }
}
