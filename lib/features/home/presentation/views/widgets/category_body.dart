import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/home/data/models/category_model.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CachedNetworkImage(
          imageUrl: category.imageUrl,
          height: 55,
          fit: BoxFit.contain,
          errorWidget: (context, url, error) => const Icon(Icons.error),
          placeholder: (context, url) => const CircularProgressIndicator(),
        ),
        const SizedBox(height: 10),
        Text(category.description, style: Styles.textStyle20),
      ],
    );
  }
}
