import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/core/widgets/custom_elevated_button.dart';

class AuthChoises extends StatelessWidget {
  const AuthChoises({super.key, required this.mainOperation, this.onPrimaryPressed, required this.secondaryOperation, this.onSecondaryPressed});

  final String mainOperation;
  final String secondaryOperation;
  final void Function()? onPrimaryPressed;
  final void Function()? onSecondaryPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomElevatedButton(
          buttonText: mainOperation,
          onPressed: onPrimaryPressed,
        ),
        SizedBox(height: 20),
        TextButton(
          onPressed: onSecondaryPressed,
          child: Text(
            secondaryOperation,
            style: Styles.textStyle20.copyWith(
              color: ColorsData.primaryColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
