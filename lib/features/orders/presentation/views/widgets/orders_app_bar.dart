import 'package:flutter/material.dart';

class OrdersAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OrdersAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'طلبات',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.black),
            onPressed: () {},
          ),
        ],
        bottom: const TabBar(
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.green,
          tabs: [
            Tab(text: 'الكل'),
            Tab(text: 'الجارية'),
            Tab(text: 'السابقة'),
          ],
        ),
      ),
    );
  }

  //! لحساب حجم AppBar مع TabBar
  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
}
