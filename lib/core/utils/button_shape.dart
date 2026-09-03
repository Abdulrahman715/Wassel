import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';

class ButtonShape {
  static ButtonStyle buttonShape() {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(ColorsData.primaryColor),
      foregroundColor: WidgetStateProperty.all(ColorsData.whiteColor),
      shape: WidgetStateProperty.all(const CircleBorder()),
      iconSize: WidgetStateProperty.all(25.19),
    );
  }
}
