import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.buttonText,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
  });

  final String buttonText;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.green.shade50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(color: textColor ?? Colors.green, fontSize: 12),
      ),
    );
  }
}
