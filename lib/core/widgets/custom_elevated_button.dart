import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/core/utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonText;
  final Color? backgroundColor;
  final Color? foregroundColor;
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.buttonText,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorsData.primaryColor,
        textStyle: Styles.textStyle18,
        foregroundColor: foregroundColor ?? Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
      child: Text(buttonText),
    );
  }
}
