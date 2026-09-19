import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/custom_app_bar.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key, this.onBackToHome});

  final void Function()? onBackToHome;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: 'طلباتي',onBackToHome: onBackToHome,);
  }
}
