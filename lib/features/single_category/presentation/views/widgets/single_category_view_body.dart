import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/sliver_grid_products_body.dart';
import 'package:wassel/features/single_category/presentation/views/widgets/custom_category_app_bar.dart';

class SingleCategoryViewBody extends StatelessWidget {
  const SingleCategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomSingleCategoryAppBar()),
        SliverToBoxAdapter(child: SizedBox(height: 40)),
        SliverGridProductsBody(),
      ],
    );
  }
}
