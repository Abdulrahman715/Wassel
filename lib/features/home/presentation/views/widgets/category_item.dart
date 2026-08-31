import 'package:flutter/material.dart';
import 'package:wassel/features/home/data/models/category_model.dart';
import 'package:wassel/features/home/presentation/views/widgets/category_body.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final void Function()? onTap;

  const CategoryItem({super.key, required this.category, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min, // ليأخذ مساحة المحتوى فقط
        children: [
          // المربع الذي يحتوي على الصورة
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26, width: 1),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400]!,
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(1, 4), // changes position of shadow
                ),
              ],
            ),
            child: CategoryBody(category: category),
          ),
        ],
      ),
    );
  }
}
