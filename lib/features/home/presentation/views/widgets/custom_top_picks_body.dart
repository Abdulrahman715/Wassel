import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/product_card.dart';
import 'package:wassel/core/widgets/product_card_shimmer.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

class CustomTopPicksBody extends StatelessWidget {
  const CustomTopPicksBody({
    super.key,
    required this.products,
    required this.isLoading,
    this.physics,
  });

  final List<ProductModel>? products; // أو نوع الـ Product Model الخاص بك
  final bool isLoading;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.32, // ارتفاع الكارت
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: physics ?? const BouncingScrollPhysics(),
        itemCount: isLoading ? 3 : products!.length,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.45, // عرض الكارت
            child: isLoading
                ? const ProductCardShimmer() // عرض الشيمر أثناء التحميل
                : ProductCard(product: products![index]), // عرض المنتج الحقيقي
          );
        },
      ),
    );
  }
}