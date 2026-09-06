import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wassel/features/home/data/models/product_model.dart';
import 'package:wassel/core/widgets/product_card_style.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, ProductDetails.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ProductCardStyle(product: product),
          Positioned(
            top: 5, // ارفعه لفوق شوية عشان يدي شكل الـ 3D
            right: 0,
            left: 10,
            child: CachedNetworkImage(
              imageUrl: product.imageUrl,
              height: 110,
              width: 120,
              fit: BoxFit.contain,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              placeholder: (context, url) => const CircularProgressIndicator(),
            ),
            // child: Image.network(
            //   product.imageUrl,
            //   height: 110,
            //   width: 120,
            //   fit: BoxFit.contain,
            //   errorBuilder: (context, error, stackTrace) {
            //     // لو الصورة فشلت، يعرض أيقونة بديلة بدل ما يطلع Error
            //     return const Icon(
            //       Icons.broken_image,
            //       size: 100,
            //       color: Colors.grey,
            //     );
            //   },
            // ),
          ),
        ],
      ),
    );
  }
}
