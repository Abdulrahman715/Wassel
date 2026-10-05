
import 'package:flutter/material.dart';

class TotalCartPrice extends StatelessWidget {
  const TotalCartPrice({
    super.key,
    required this.total,
  });

  final double total;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("الإجمالي",
            style: TextStyle(fontWeight: FontWeight.bold)),
        
        Text(
          "${total.toStringAsFixed(2)} ج.م",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}