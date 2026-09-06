import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/product_card.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

class SliverGridProductsBody extends StatelessWidget {
  const SliverGridProductsBody({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عنصرين في كل صف
          mainAxisSpacing: 30, // المسافة الرأسية
          crossAxisSpacing: 15, // المسافة الأفقية
          childAspectRatio: 0.6, // نسبة العرض للطول (اضبطها لتناسب حجم الكارت)
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return ProductCard(product: products[index]);
        }, childCount: products.length),
      ),
    );
  }
}
