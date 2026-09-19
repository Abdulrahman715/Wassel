import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class PaymentContainerStyle extends StatelessWidget {
  const PaymentContainerStyle({
    super.key,
    required this.paymentMethod,
    this.leadingIcon,
    this.onTap,
  });

  final String paymentMethod;
  final Widget? leadingIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(128),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        leading: leadingIcon,
        title: Text(paymentMethod , style:Styles.labelText.copyWith(fontSize: 16),),
        onTap: onTap,
      ),
    );
  }
}
