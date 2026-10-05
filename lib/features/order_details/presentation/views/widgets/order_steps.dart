import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/date_and_status_order.dart';

class OrderSteps extends StatelessWidget {
  const OrderSteps({
    super.key,
    required this.title,
    required this.isCompleted,
    required this.date,
    required this.time,
  });

  final String title;
  final bool isCompleted;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DateAndStatusOrder(
            title: title,
            isCompleted: isCompleted,
            date: date,
          ),
          Text(time, style: Styles.textStyle14),
        ],
      ),
    );
  }
}
