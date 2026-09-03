import 'package:flutter/material.dart';

class SuggestedHomeContent extends StatelessWidget {
  const SuggestedHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            'اختيارات على ذوقك 🔥',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'منتجات رائجة ستنال إعجابك',
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
