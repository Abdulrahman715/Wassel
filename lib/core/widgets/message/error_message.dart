import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.errMessage});

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.errorText.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
