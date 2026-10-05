
import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class DateAndStatusOrder extends StatelessWidget {
  const DateAndStatusOrder({
    super.key,
    required this.title,
    required this.isCompleted,
    required this.date,
  });

  final String title;
  final bool isCompleted;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
            color: isCompleted ? Colors.black : Colors.grey,
          )
        ),
        const SizedBox(height: 2),
        Text(
          date,
          style: Styles.textStyle12,
        ),
      ],
    );
  }
}