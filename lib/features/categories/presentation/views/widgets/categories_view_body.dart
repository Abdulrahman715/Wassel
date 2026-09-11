import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/error_message.dart';
import 'package:wassel/core/utils/loading_style.dart';
import 'package:wassel/core/widgets/custom_category_app_bar.dart';
import 'package:wassel/core/widgets/sliver_grid_categories_body.dart';
import 'package:wassel/features/categories/presentation/cubit/cubit/categories_cubit.dart';
import 'package:wassel/core/widgets/empty_categories_message.dart';
import 'package:wassel/features/home/data/models/category_model.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomCategoryAppBar(
            title: 'فئات ${categoryModel.description}',
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 40)),

        //! ....................................................
        BlocBuilder<CategoriesCubit, CategoriesState>(
          builder: (context, state) {
            if (state is CategoriesSuccess) {
              if (state.subCategories.isEmpty) {
                return const SliverToBoxAdapter(
                  child: EmptyMessage(
                    emptyMessage: 'لا توجد أقسام فرعية متاحة حالياً',
                  ),
                );
              }
              //! غير ذلك قم بتمرير الأقسام الفرعية للودجت المشتركة بكل سهولة
              return SliverGridCategoriesBody(categories: state.subCategories);
            } else if (state is CategoriesFailure) {
              return SliverToBoxAdapter(
                child: ErrorMessage(errMessage: state.errorMessage),
              );
            } else {
              return const SliverToBoxAdapter(child: LoadingStyle());
            }
          },
        ),
      ],
    );
  }
}
