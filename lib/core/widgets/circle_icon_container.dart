
import 'package:flutter/material.dart';

class CircleContainerIcon extends StatelessWidget {
  const CircleContainerIcon({
    super.key,
    required this.isCompleted,
  });

  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCompleted ? Colors.green : Colors.grey.shade300,
      ),
      child: Icon(
        isCompleted ? Icons.check : Icons.circle,
        size: 14,
        color: Colors.white,
      ),
    );
  }
}
