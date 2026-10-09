import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({
    super.key,
    required this.cartItems,
  });

  final List<CartItemModel> cartItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = cartItems[index];
        return Material(
          color: Colors.transparent,
          child: ListTile(
            leading: Image.network(
              item.productModel.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(item.productModel.name , style: Styles.labelText,),
            subtitle: Text('الكمية: ${item.quantity}' , style: Styles.textStyle16,),
            trailing: Text(
              '${item.productModel.price * item.quantity} ج.م',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
      itemCount: cartItems.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
