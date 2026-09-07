import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/features/home/data/models/category_model.dart';
import 'package:wassel/features/home/presentation/views/widgets/category_item.dart';

class SliverGridCategoriesBody extends StatelessWidget {
  const SliverGridCategoriesBody({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عنصرين في كل صف
          mainAxisSpacing: 8, // المسافة الرأسية
          crossAxisSpacing: 3, // المسافة الأفقية
          childAspectRatio: 1, // نسبة العرض للطول (اضبطها لتناسب حجم الكارت)
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return CategoryItem(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kSingleCategoryView);
            },
            category: categories[index],
          );
        }, childCount: categories.length),
      ),
    );
  }
}
