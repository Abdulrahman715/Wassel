
import 'package:flutter/material.dart';

class EmptyCategoriesMessage extends StatelessWidget {
  const EmptyCategoriesMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text('لا توجد أقسام فرعية متاحة حالياً'),
      ),
    );
  }
}
