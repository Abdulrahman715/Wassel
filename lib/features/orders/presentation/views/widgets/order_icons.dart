
import 'package:flutter/material.dart';

class OrderIcons extends StatelessWidget {
  const OrderIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.check_circle, size: 16, color: Colors.green),
        SizedBox(width: 6),
        Icon(Icons.local_shipping, size: 16, color: Colors.grey),
        SizedBox(width: 6),
        Icon(Icons.inventory, size: 16, color: Colors.grey),
      ],
    );
  }
}
