
import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/home/data/models/category_model.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          category.image,
          height: 35,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 10),
        Text(category.name, style: Styles.textStyle20),
      ],
    );
  }
}
