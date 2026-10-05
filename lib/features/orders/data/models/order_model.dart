import 'package:wassel/features/cart/data/models/cart_item_model.dart';
import 'package:wassel/features/orders/data/models/order_tracking_step.dart';

class OrderModel {
  final String orderId;
  final String status; // مثل: CONFIRMED, ON PROCESS, SHIPPED, DELIVERED
  final String deliverTo; // مثل: Home, Office
  final double totalPayment;
  final String paymentMethod; // مثل: Credit Card
  final List<CartItemModel> items; // استخدام CartItemModel مباشرة لأنه يحمل المنتج والكمية!
  final List<OrderTrackingStep> trackingSteps; //! مراحل التوصيل بتواريخهم

  const OrderModel({
    required this.orderId,
    required this.status,
    required this.deliverTo,
    required this.totalPayment,
    required this.paymentMethod,
    required this.items,
    required this.trackingSteps,
  });

  // فاكتوري للـ FromJson (عندما تربطه بالـ API لاحقاً)
  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      orderId: json['order_id'] as String,
      status: json['status'] as String,
      deliverTo: json['deliver_to'] as String,
      totalPayment: (json['total_payment'] as num).toDouble(),
      paymentMethod: json['payment_method'] as String,
      items: (json['items'] as List<dynamic>)
          .map((item) => CartItemModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      trackingSteps: (json['tracking_steps'] as List<dynamic>)
          .map((step) => OrderTrackingStep.fromJson(step as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'order_id': orderId,
        'status': status,
        'deliver_to': deliverTo,
        'total_payment': totalPayment,
        'payment_method': paymentMethod,
        'items': items.map((item) => item.toJson()).toList(),
        'tracking_steps': trackingSteps.map((step) => step.toJson()).toList(),
      };
}
