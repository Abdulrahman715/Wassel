import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/core/widgets/custom_app_bar.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/order_details_list_view.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/payment_details.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/tracking_steps_body.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';

class OrdersDetailsViewBody extends StatelessWidget {
  const OrdersDetailsViewBody({super.key, required this.order});

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            title: 'تفاصيل الطلب',
            onBackToHome: () {
              Navigator.pop(context);
            },
          ),

          SizedBox(height: 20),
          // رقم الطلب في الأعلى
          Text('رقم الطلب: ${order.orderId}', style: Styles.textStyle20),
          const SizedBox(height: 16),

          // 1. قسم خط الزمن للتتبع (Timeline)
          TrackingStepsBody(order: order),
          const SizedBox(height: 20),

          // 2. قسم منتجات الطلب (باستخدام CartItemModel المدمج)
          const Text('منتجات الطلب', style: Styles.textStyle20),
          const SizedBox(height: 10),
          // منتجات الطلب  
          OrdersDetailsListView(order: order),
          const SizedBox(height: 20),

          // 3. الملخص المالي وطريقة الدفع
          PaymentDetails(order: order),
        ],
      ),
    );
  } 
}