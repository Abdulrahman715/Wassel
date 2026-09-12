
import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';
import 'package:wassel/features/cart/presentation/views/widgets/row_of_calculate_price.dart';

class CartProductBody extends StatelessWidget {
  const CartProductBody({
    super.key,
    required this.item,
  });

  final CartItemModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(item.productModel.name, style: Styles.labelText),
        const SizedBox(height: 10),
        Text(
          '( ${item.productModel.description} )',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 20),
        //! Row of quantity and price
        RowOfCalculatePrice(item: item),
      ],
    );
  }
}
