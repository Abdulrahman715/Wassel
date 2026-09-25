import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class ListTilePaymentMethod extends StatelessWidget {
  const ListTilePaymentMethod({
    super.key,
    required this.leadingIcon,
    required this.paymentMethod,
    required this.isSelected,
    required this.onTap,
  });

  final Widget? leadingIcon;
  final String paymentMethod;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingIcon,
      title: Text(
        paymentMethod,
        style: Styles.labelText.copyWith(fontSize: 16),
      ),
      //! icon in the end of list tile to recognize this item choosed or not
      trailing: isSelected
          ? const Icon(Icons.check_circle, color: Colors.blue)
          : const Icon(Icons.radio_button_unchecked, color: Colors.grey),
      onTap: onTap,
    );
  }
}
