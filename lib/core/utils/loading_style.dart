import 'package:flutter/material.dart';

class LoadingStyle extends StatelessWidget {
  const LoadingStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
