import 'package:flutter/material.dart';
import 'package:wassel/core/utils/button_shape.dart';
import 'package:wassel/core/utils/styles.dart';

class CustomCategoryAppBar extends StatelessWidget {
  const CustomCategoryAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            style: ButtonShape.buttonShape(),
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Text(title, style: Styles.textStyle25),
          const SizedBox(width: 48), // مساحة فارغة لتوازن التصميم
        ],
      ),
    );
  }
}
