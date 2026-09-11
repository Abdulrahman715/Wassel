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
          childAspectRatio: 1, // نسبة العرض للطول
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          final category = categories[index];
          return CategoryItem(
            onTap: () {
              // التحقق: هل القسم يحتوي على أقسام فرعية أخرى بداخله؟
              if (category.subcategories.isNotEmpty) {
                // إذا كان لديه أقسام فرعية (مثل المطاعم)، افتح شاشة الفئات لعرضها
                GoRouter.of(context).push(
                  AppRouter.kCategoriesView,
                  extra: category,
                );
              } else {
                // إذا لم يكن لديه أقسام فرعية ووصل للنهاية (مثل لحوم)، افتح شاشة المنتجات
                GoRouter.of(context).push(
                  AppRouter.kSingleCategoryView,
                  extra: category,
                );
              }
            },
            category: category,
          );
        }, childCount: categories.length),
      ),
    );
  }
}