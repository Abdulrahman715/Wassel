import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/custom_category_app_bar.dart';
import 'package:wassel/core/widgets/sliver_grid_categories_body.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomCategoryAppBar(title: 'فئات السوبر ماركت',)),
        SliverToBoxAdapter(child: SizedBox(height: 40)),
        SliverGridCategoriesBody(),
      ],
    );
  }
}
