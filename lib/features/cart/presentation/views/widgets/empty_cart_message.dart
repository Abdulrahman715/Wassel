
import 'package:flutter/material.dart';

class EmptyCartMessage extends StatelessWidget {
  const EmptyCartMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'سلة مشترياتك فارغة !',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
