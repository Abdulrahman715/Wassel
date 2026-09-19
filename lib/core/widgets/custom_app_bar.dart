import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.onBackToHome, required this.title});

  final void Function()? onBackToHome;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: ColorsData.whiteColor,
      centerTitle: true,
      toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      title: Text(
        title,
        style: Styles.headMedium(
          context,
        ).copyWith(color: ColorsData.primaryColor),
      ),
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(Icons.arrow_circle_left_outlined),
        onPressed: onBackToHome,
      ),
    );
  }
}
