import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/core/utils/styles.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: ColorsData.whiteColor,
      centerTitle: true,
      toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      title: Text(
        'طلباتى',
        style: Styles.headMedium(
          context,
        ).copyWith(color: ColorsData.primaryColor),
      ),
      automaticallyImplyLeading: false,
    );
  }
}
