import 'package:flutter/material.dart';

void showSnackBarMessage(BuildContext context , {required String snackBarMessage}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(snackBarMessage),
        duration: Duration(milliseconds: 800),
      ),
    );
  }