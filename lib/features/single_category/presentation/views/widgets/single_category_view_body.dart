import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/empty_categories_message.dart';
import 'package:wassel/core/widgets/sliver_grid_products_body.dart';
import 'package:wassel/features/home/data/models/category_model.dart';
import 'package:wassel/features/single_category/presentation/views/widgets/custom_category_app_bar.dart';

class SingleCategoryViewBody extends StatelessWidget {
  const SingleCategoryViewBody({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    //! استخراج المنتجات مباشرة من القسم الفرعي المخزن في الـمودل
    final products = categoryModel.products;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomSingleCategoryAppBar(categoryModel: categoryModel),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 40)),

        //! ..................................................
        //? التحقق مما إذا كانت القائمة فارغة أم تحتوي على منتجات لعرضها
        products.isEmpty
            ? const SliverToBoxAdapter(
                child: EmptyMessage(
                  emptyMessage: 'لا توجد منتجات لهذا القسم حتى الان',
                ),
              )
            : SliverGridProductsBody(products: products),
      ],
    );
  }
}
