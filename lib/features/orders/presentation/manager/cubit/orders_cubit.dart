import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';
import 'package:wassel/features/home/data/models/product_model.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';
import 'package:wassel/features/orders/data/models/order_tracking_step.dart';
import 'package:wassel/features/orders/presentation/manager/cubit/orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(OrdersInitial());

  void fetchOrders() async {
    emit(OrdersLoading());
    try {
      // محاكاة وقت التحميل من السيرفر
      await Future.delayed(const Duration(milliseconds: 800));

      // بيانات وهمية باللغة العربية متوافقة مع CartItemModel و ProductModel
      List<OrderModel> mockOrders = [
        OrderModel(
          orderId: 'GC092921',
          status: 'CONFIRMED', // مؤكد
          deliverTo: 'المنزل',
          totalPayment: 105.0,
          paymentMethod: 'بطاقة ائتمان',
          items: [
            CartItemModel(
              id: 1,
              quantity: 1,
              productModel: ProductModel(
                id: 101,
                categoryId: 1,
                name: 'كرنب أخضر طازج',
                description: 'كرنب عضوي طازج عالي الجودة ومفرغ',
                price: 35,
                imageUrl: 'https://via.placeholder.com/150',
              ),
            ),
            CartItemModel(
              id: 2,
              quantity: 2,
              productModel: ProductModel(
                id: 102,
                categoryId: 1,
                name: 'يوسفي بلدي',
                description: 'يوسفي طازج ومسبر ولذيذ',
                price: 35,
                imageUrl: 'https://via.placeholder.com/150',
              ),
            ),
          ],
          trackingSteps: [
            OrderTrackingStep(title: 'تم تأكيد الطلب', time: '08:00 م', date: '29 سبتمبر 2026', isCompleted: true),
            OrderTrackingStep(title: 'الطلب قيد التجهيز', time: '07:00 ص', date: '30 سبتمبر 2026', isCompleted: false),
            OrderTrackingStep(title: 'تم شحن الطلب', time: '07:30 ص', date: '30 سبتمبر 2026', isCompleted: false),
            OrderTrackingStep(title: 'تم توصيل الطلب', time: '08:00 ص', date: '30 سبتمبر 2026', isCompleted: false),
          ],
        ),
        OrderModel(
          orderId: 'GC092922',
          status: 'ON PROCESS', // قيد التنفيذ
          deliverTo: 'المكتب',
          totalPayment: 150.0,
          paymentMethod: 'الدفع عند الاستلام',
          items: [
            CartItemModel(
              id: 3,
              quantity: 1,
              productModel: ProductModel(
                id: 103,
                categoryId: 2,
                name: 'لحم بقري طازج',
                description: 'قطع لحم بقري طازجة ممتازة',
                price: 150,
                imageUrl: 'https://via.placeholder.com/150',
              ),
            ),
          ],
          trackingSteps: [
            OrderTrackingStep(title: 'تم تأكيد الطلب', time: '09:00 ص', date: '29 سبتمبر 2026', isCompleted: true),
            OrderTrackingStep(title: 'الطلب قيد التجهيز', time: '10:00 ص', date: '30 سبتمبر 2026', isCompleted: true),
            OrderTrackingStep(title: 'تم شحن الطلب', time: '11:00 ص', date: '30 سبتمبر 2026', isCompleted: false),
            OrderTrackingStep(title: 'تم توصيل الطلب', time: '--:--', date: '--', isCompleted: false),
          ],
        ),
      ];

      emit(OrdersSuccess(orders: mockOrders));
    } catch (e) {
      emit(OrdersFailure(errMessage: e.toString()));
    }
  }
}