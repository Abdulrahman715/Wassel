import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/core/widgets/category_item_shimmer.dart';
import 'package:wassel/features/home/data/models/category_model.dart';
import 'package:wassel/features/home/presentation/views/widgets/category_item.dart';

class CategoriesSectionBody extends StatelessWidget {
  const CategoriesSectionBody({super.key, required this.homeCategories, required this.isLoading});

  final List<CategoryModel>? homeCategories;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2, // ارتفاع القسم
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: isLoading ? 3 : homeCategories!.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return isLoading
              ? const CategoryItemShimmer()
              : CategoryItem(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kCategoriesView,
                      extra: homeCategories![index], // تمرير الـ CategoryModel بالكامل هنا
                    ); //! هنا هنبعت القسم بالكامل اللى اليوزر داس عليه
            },
            category: homeCategories![index],
          );
        },
      ),
    );
  }
}
