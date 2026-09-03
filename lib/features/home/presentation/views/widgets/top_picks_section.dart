import 'package:flutter/material.dart';
import 'package:wassel/core/utils/asset_data.dart';
import 'package:wassel/features/home/data/models/product_model.dart';
import 'package:wassel/core/widgets/product_card.dart';

class TopPicksSection extends StatelessWidget {
  const TopPicksSection({super.key});

  @override
  Widget build(BuildContext context) {
    // بيانات تجريبية (Mock Data)
    final List<ProductModel> products = [
      ProductModel(
        id: 0,
        name: 'بطاطس',
        weight: '500جرام',
        price: 1.39,
        image: AssetData.cornImage,
        category: 'خضروات',
      ),
      ProductModel(
        id: 1,
        name: 'طماطم',
        weight: '500 جرام',
        price: 6.99,
        image: AssetData.cornImage,
        category: 'خضروات',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // عنوان القسم
        Text(
          ' اكثر المنتجات مبيعاً',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),

        // القائمة الأفقية
        SizedBox(
          height: 220, // ارتفاع الكارت
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: products.length,
            separatorBuilder: (context, index) => const SizedBox(width: 15),
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            },
          ),
        ),
      ],
    );
  }
}
