import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/custom_text_button.dart';
import 'package:wassel/core/widgets/default_container_style.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';
import 'package:wassel/features/cart/presentation/views/widgets/cart_product_image.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/product_details.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return DefaultContainerStyle(
      child: Row(
        children: [
          // صورة المنتج من الـ ProductModel
          CartProductImage(
            imageSrc: cartItem.productModel.imageUrl,
            item: cartItem,
          ),
          const SizedBox(width: 12),

          // تفاصيل اسم المنتج والكمية
          ProductDetails(cartItem: cartItem),

          // زر شراء مرة أخرى
          CustomTextButton(
            buttonText: 'شراء مرة أخرى',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
