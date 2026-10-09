import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/product_card.dart';
import 'package:wassel/core/widgets/product_card_shimmer.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

class SliverGridProductsBody extends StatelessWidget {
  const SliverGridProductsBody({
    super.key,
    required this.products,
    required this.isLoading,
  });

  final List<ProductModel>? products;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عنصرين في كل صف
          mainAxisSpacing: 30, // المسافة الرأسية
          crossAxisSpacing: 15, // المسافة الأفقية
          childAspectRatio: isLoading ? 0.7 : 0.56, // نسبة العرض للطول (اضبطها لتناسب حجم الكارت)
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return isLoading
              ? const ProductCardShimmer() // عرض مؤشر التحميل أثناء التحميل
              : ProductCard(product: products![index]);
        }, childCount: isLoading ? 4 : products!.length),
      ),
    );
  }
}
