import 'package:flutter/material.dart';

class DefaultContainerStyle extends StatelessWidget {
  const DefaultContainerStyle({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 4), // changes position of shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
