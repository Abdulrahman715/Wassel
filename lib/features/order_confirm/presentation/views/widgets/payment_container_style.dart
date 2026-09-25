import 'package:flutter/material.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/list_tile_payment_method.dart';

class PaymentContainerStyle extends StatelessWidget {
  const PaymentContainerStyle({
    super.key,
    required this.paymentMethod,
    this.leadingIcon,
    this.onTap,
    required this.isSelected,
  });

  final String paymentMethod;
  final Widget? leadingIcon;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        //! اطار ملون يحدد الاختيار النشط
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.transparent,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(128),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: ListTilePaymentMethod(
        leadingIcon: leadingIcon,
        paymentMethod: paymentMethod,
        isSelected: isSelected,
        onTap: onTap,
      ),
    );
  }
}
