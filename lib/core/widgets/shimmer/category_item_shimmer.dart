import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CategoryItemShimmer extends StatelessWidget {
  const CategoryItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.height * 0.17,
            decoration: BoxDecoration(
              color: Colors.white, // لون الخلفية الوهمية للشيمر
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400]!,
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(1, 4),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}