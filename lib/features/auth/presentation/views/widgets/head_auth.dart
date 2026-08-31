import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class HeadAuth extends StatelessWidget {
  const HeadAuth({super.key, required this.authType, required this.subText});

  final String authType;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            authType,
            style: Styles.headMedium(context).copyWith(color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            subText,
            style: Styles.bodyMedium(context).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
