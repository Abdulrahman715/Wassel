import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/core/utils/asset_data.dart';
import 'package:wassel/features/home/data/models/category_model.dart';
import 'package:wassel/features/home/presentation/views/widgets/category_item.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categories = [
      CategoryModel(image: AssetData.cornImage, name: 'سوبر ماركت'),
      CategoryModel(image: AssetData.cornImage, name: 'المطاعم'),
      CategoryModel(image: AssetData.cornImage, name: 'تاكسى'),
      CategoryModel(image: AssetData.cornImage, name: ' الملابس'),
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2, // ارتفاع القسم
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return CategoryItem(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kCategoriesView);
            },
            category: categories[index],
          );
        },
      ),
    );
  }
}
