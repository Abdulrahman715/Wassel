import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class EmptyOrdersWidget extends StatelessWidget {
  const EmptyOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '😞',
            style: TextStyle(fontSize: 60),
          ),
          const SizedBox(height: 16),
          const Text(
            "مفيش اوردرات",
            style: Styles.labelText,
          ),
          const SizedBox(height: 8),
          const Text(
            'لا يوجد طلبات ليك لحد دلوقتى',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(height: 30),
          // يمكنك هنا إضافة قسم المنتجات المقترحة (Top Picks) كما في التصميم
        ],
      ),
    );
  }
}