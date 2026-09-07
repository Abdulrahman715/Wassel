import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/service/setup_service_locator.dart';
import 'package:wassel/features/categories/data/cubit/cubit/categories_cubit.dart';
import 'package:wassel/features/categories/data/repo/categories_repo_impl.dart';
import 'package:wassel/features/categories/presentation/views/widgets/categories_view_body.dart';
import 'package:wassel/features/home/data/models/category_model.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoriesCubit>(
      create: (context) => CategoriesCubit(getIt.get<CategoriesRepoImpl>())
        ..fetchCategoryTree(
          categoryId: categoryModel.id,
        ), // جلب البيانات تلقائياً بالـ id,
      child: Scaffold(
        body: SafeArea(child: CategoriesViewBody(categoryModel: categoryModel)),
      ),
    );
  }
}
