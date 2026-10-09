import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class OrderCardShimmer extends StatelessWidget {
  const OrderCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // محاكاة سطر الحالة في الأعلى
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 80, height: 14, color: Colors.white),
                Row(
                  children: const [
                    CircleAvatar(radius: 8, backgroundColor: Colors.white),
                    SizedBox(width: 6),
                    CircleAvatar(radius: 8, backgroundColor: Colors.white),
                    SizedBox(width: 6),
                    CircleAvatar(radius: 8, backgroundColor: Colors.white),
                  ],
                ),
              ],
            ),
            const Divider(height: 20),
            
            // محاكاة أعمدة بيانات الطلب (Order ID, Deliver To, Total)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                3,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 50, height: 10, color: Colors.white),
                    const SizedBox(height: 6),
                    Container(width: 70, height: 14, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}