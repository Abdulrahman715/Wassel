import 'package:flutter/material.dart';
import 'package:wassel/features/home/data/models/category_model.dart';
import 'package:wassel/features/single_category/presentation/views/widgets/single_category_view_body.dart';

class SingleCategoryView extends StatelessWidget {
  const SingleCategoryView({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: SingleCategoryViewBody()));
  }
}
