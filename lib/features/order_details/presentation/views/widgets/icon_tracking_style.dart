
import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/circle_icon_container.dart';

class IconTeackingStyle extends StatelessWidget {
  const IconTeackingStyle({
    super.key,
    required this.isCompleted,
    required this.isLast,
  });

  final bool isCompleted;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleContainerIcon(isCompleted: isCompleted),
        if (!isLast)
          Container(
            width: 2,
            height: 40,
            color: isCompleted ? Colors.green : Colors.grey.shade300,
          ),
      ],
    );
  }
}