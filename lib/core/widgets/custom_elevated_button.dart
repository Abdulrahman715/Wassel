import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/core/utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonText;
  const CustomElevatedButton({super.key, this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsData.primaryColor,
        textStyle: Styles.textStyle18,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 20),
      ),
      child:  Text(buttonText),
    );
  }
}
