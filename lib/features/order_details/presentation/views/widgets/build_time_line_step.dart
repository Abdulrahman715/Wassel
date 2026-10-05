// ودجت تصميم خط الزمن (Timeline Step)
import 'package:flutter/material.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/icon_tracking_style.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/order_steps.dart';

class BuildTimelineStep extends StatelessWidget {
  const BuildTimelineStep({
    super.key,
    required this.title,
    required this.time,
    required this.date,
    required this.isCompleted,
    required this.isLast,
  });

  final String title;
  final String time;
  final String date;
  final bool isCompleted;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconTeackingStyle(isCompleted: isCompleted, isLast: isLast),
        const SizedBox(width: 12),
        OrderSteps(
          title: title,
          isCompleted: isCompleted,
          date: date,
          time: time,
        ),
      ],
    );
  }
}
