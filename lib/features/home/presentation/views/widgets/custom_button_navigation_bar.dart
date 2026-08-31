import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/core/utils/styles.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.selectedPageIndex,
    required this.onTap,
  });

  final int selectedPageIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white54
                : Colors.grey,
            width: 0.5,
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: selectedPageIndex,
          onTap: onTap,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: ColorsData.primaryColor,
          selectedLabelStyle: Styles.textStyle16,
          unselectedItemColor: Colors.grey[500],
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_outlined),
              label: 'طلبات',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'المشتريات',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'الحساب'),
          ],
        ),
      ),
    );
  }
}
