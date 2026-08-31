import 'package:flutter/material.dart';
import 'package:wassel/features/cart/presentation/views/cart_view.dart';
import 'package:wassel/features/home/presentation/views/widgets/custom_button_navigation_bar.dart';
import 'package:wassel/features/home/presentation/views/widgets/home_drawer.dart';
import 'package:wassel/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:wassel/features/orders/presentation/views/orders_view.dart';
import 'package:wassel/features/profile/presentation/views/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedPageIndex = 0;

  void changePage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomeViewBody(),
      OrdersView(),
      CartView(),
      ProfileView(),
    ];

    return Scaffold(
      drawer: const HomeDrawer(), // ربط القائمة الجانبية هنا
      extendBody:
          true, // مهم جداً عشان الـ body ياخد مساحة الشاشة كلها تحت الـ Nav
      // appBar: HomeAppBar(),
      body: pages[selectedPageIndex],

      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: selectedPageIndex,
        onTap: changePage,
      ),
    );
  }
}
