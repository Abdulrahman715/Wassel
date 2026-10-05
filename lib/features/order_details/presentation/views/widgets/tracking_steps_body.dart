
import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/default_container_style.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/build_time_line_step.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';

class TrackingStepsBody extends StatelessWidget {
  const TrackingStepsBody({
    super.key,
    required this.order,
  });

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return DefaultContainerStyle(
      child: Column(
        children: List.generate(order.trackingSteps.length, (index) {
          final step = order.trackingSteps[index];
          bool isLast = index == order.trackingSteps.length - 1;
          return BuildTimelineStep(
            title: step.title,
            time: step.time,
            date: step.date,
            isCompleted: step.isCompleted,
            isLast: isLast,
          );
        }),
      ),
    );
  }
}
