import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle headMedium(BuildContext context) {
    final style = Theme.of(context).textTheme.headlineMedium;
    return style?.copyWith(fontWeight: FontWeight.bold) ??
        const TextStyle(fontWeight: FontWeight.bold);
  }

  static TextStyle bodyMedium(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyMedium;
    return style?.copyWith(fontWeight: FontWeight.w400) ??
        const TextStyle(fontWeight: FontWeight.w400);
  }

  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
  );
  static const textStyle25 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const labelText = TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
}
