import 'package:flutter/material.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/cash_details_body.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/payment_container_style.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/visa_details_body.dart';

class PaymentMethodSection extends StatefulWidget {
  const PaymentMethodSection({super.key});

  @override
  State<PaymentMethodSection> createState() => _PaymentMethodSectionState();
}

class _PaymentMethodSectionState extends State<PaymentMethodSection> {
  // لتتبع الاختيار الحالي (-1 يعتي لا يوجد اختيار مبدئي)
  int selectedIndex = 2; // تعيين الدفع عند الاستلام كخيار افتراضي

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'طرق الدفع',
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // 1. بطاقة الائتمان
          PaymentContainerStyle(
            paymentMethod: 'بطاقة ائتمان',
            leadingIcon: const Icon(Icons.credit_card, color: Colors.blue, size: 30),
            isSelected: selectedIndex == 0,
            onTap: () {
              setState(() {
                selectedIndex = 0; // تحديد الفيزا
              });
            },
          ),
          
          // إذا اختر بطاقة الائتمان، افتح حقول الفيزا تحته مباشرة
          if (selectedIndex == 0) ...[
            const SizedBox(height: 12),
            VisaDetailsBody(),
          ],

          const SizedBox(height: 15),

          // 2. المحفظة الرقمية
          PaymentContainerStyle(
            paymentMethod: 'محفظة رقمية',
            leadingIcon: const Icon(Icons.wallet, color: Colors.green, size: 30),
            isSelected: selectedIndex == 1,
            onTap: () {
              setState(() {
                selectedIndex = 1; // تحديد المحفظة
              });
            },
          ),

          // إذا اختار المحفظة الرقمية، افتح خانة رقم الهاتف/المحفظة تحته
          if (selectedIndex == 1) ...[
            const SizedBox(height: 12),
            CashDetailsBody(),
          ],

          const SizedBox(height: 15),

          // 3. الدفع عند الاستلام (لا يحتاج لحقول إضافية)
          PaymentContainerStyle(
            paymentMethod: 'الدفع عند الاستلام',
            leadingIcon: const Icon(Icons.local_shipping, color: Colors.orange, size: 30),
            isSelected: selectedIndex == 2,
            onTap: () {
              setState(() {
                selectedIndex = 2; // تحديد الكاش
              });
            },
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
