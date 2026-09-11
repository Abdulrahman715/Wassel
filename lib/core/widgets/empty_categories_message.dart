import 'package:flutter/material.dart';

class EmptyMessage extends StatelessWidget {
  const EmptyMessage({super.key, required this.emptyMessage});

  final String emptyMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(padding: EdgeInsets.all(20.0), child: Text(emptyMessage)),
    );
  }
}
