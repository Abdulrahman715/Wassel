import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/custom_elevated_button.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/order_details_view_body.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({super.key, required this.order});

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    bool isDelivered = order.status.toUpperCase() == 'DELIVERED';

    return Scaffold(
      body: OrdersDetailsViewBody(order: order),

      // الزر السفلي (تتبع الطلب أو كتابة تقييم)
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomElevatedButton(
          backgroundColor: Color(0xFF1B4D3E), // لون أخضر غامق احترافي,
          onPressed: () {
            if (isDelivered) {
              // إذا تم تسليم الطلب، انتقل إلى صفحة كتابة التقييم
              // Navigator.pushNamed(context, '/write_review', arguments: order);
            } else {
              // إذا لم يتم تسليم الطلب، انتقل إلى صفحة تتبع الطلب
              // Navigator.pushNamed(context, '/track_order', arguments: order);
            }
          },
          buttonText: isDelivered ? 'كتابة تقييم' : 'تتبع الطلب',
        ),
      ),
    );
  }
}
