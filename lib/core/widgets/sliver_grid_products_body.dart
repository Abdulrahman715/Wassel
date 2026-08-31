import 'package:flutter/material.dart';
import 'package:wassel/core/utils/asset_data.dart';
import 'package:wassel/core/widgets/product_card.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

class SliverGridProductsBody extends StatelessWidget {
  const SliverGridProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    // بيانات تجريبية مطابقة للصورة
    final List<ProductModel> products = [
      ProductModel(
        id: 0,
        name: 'سجق بقري بلدي 500 جم',
        price: 250.00,
        image: AssetData.cornImage,
        weight: '500g',
        category: 'لحوم',
      ),
      ProductModel(
        id: 1,
        name: 'كندوز بقري بلدي مفروم 500 جم',
        price: 255.00,
        image: AssetData.cornImage,
        weight: '500g',
        category: 'لحوم',
      ),
      ProductModel(
        id: 2,
        name: 'شيش طاووق متبل',
        price: 180.00,
        image: AssetData.cornImage,
        weight: '500g',
        category: 'لحوم',
      ),
      ProductModel(
        id: 3,
        name: 'كفتة حاتي بلدي',
        price: 220.00,
        image: AssetData.cornImage,
        weight: '500g',
        category: 'لحوم',
      ),
    ];

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
