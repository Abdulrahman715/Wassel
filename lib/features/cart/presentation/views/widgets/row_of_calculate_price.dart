
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_cubit.dart';
import 'package:wassel/features/cart/presentation/views/widgets/custom_quantity_button.dart';

class RowOfCalculatePrice extends StatelessWidget {
  const RowOfCalculatePrice({
    super.key,
    required this.item,
  });

  final CartItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ➖
        CustomQuantityButton(
          icon: Icons.remove,
          onTap: () {
            context.read<CartCubit>().decreaseQuantity(item);
          },
          isOutlined: true,
        ),
        // الكمية
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            item.quantity.toString(),
            style: Styles.textStyle16,
          ),
        ),
        const SizedBox(width: 5),
        // ➕
        CustomQuantityButton(
          icon: Icons.add,
          onTap: () {
            context.read<CartCubit>().increaseQuantity(item);
          },
          //زر ممتلي (مش outline).
          isOutlined: false,
        ),
        const SizedBox(width: 30),
        // 💰 السعر
        Text(
          "${(item.productModel.price * item.quantity).toStringAsFixed(2)} ج.م",
          style: Styles.labelText,
        ),
      ],
    );
  }
}
