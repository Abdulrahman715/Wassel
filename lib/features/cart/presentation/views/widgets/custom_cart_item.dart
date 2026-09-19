import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_cubit.dart';
import 'package:wassel/features/cart/presentation/views/widgets/cart_product_body.dart';
import 'package:wassel/features/cart/presentation/views/widgets/cart_product_image.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({super.key, required this.item});

  final CartItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.19,
      width: MediaQuery.of(context).size.width * 0.45,
      //! تكييف لون الـ Container مع الوضع الليلي
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 4), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 1.0, right: 25.0, top: 12.0, bottom: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! صورة المنتج
            CartProductImage(item: item),
            const SizedBox(width: 12), // مسافة بين الصورة والتفاصيل
            // 📄 التفاصيل
            Expanded(
              child: Row(
                children: [
                  // Spacer(flex:1),
                  //! تفاصيل المنتج (الاسم، الوصف، الكمية)
                  CartProductBody(item: item),
        
                  // const Spacer(flex: 4), // Spacer to push the delete icon to the far right
                  //! icon to delete the item from the cart
                  IconButton(
                    onPressed: () {
                      context.read<CartCubit>().removeFromCart(item);
                    },
                    icon: Icon(Icons.remove_circle_outline , size: 30, color: Colors.redAccent,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
