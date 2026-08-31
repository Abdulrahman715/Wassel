import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/core/utils/styles.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // رأس القائمة الجانبية
          DrawerHeader(
            decoration: BoxDecoration(color: ColorsData.primaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 35,
                    color: ColorsData.primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'تطبيق واصل',
                  style: Styles.textStyle20.copyWith(color: Colors.white),
                ),
                const Text(
                  'مرحباً بك في عالم التسوق السريع',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),

          // العناصر داخل القائمة
          ListTile(
            leading: Icon(Icons.home_outlined, color: ColorsData.primaryColor),
            title: const Text('الرئيسية'),
            onTap: () {
              Navigator.pop(context); // لغلق الدرج
            },
          ),
          ListTile(
            leading: Icon(
              Icons.category_outlined,
              color: ColorsData.primaryColor,
            ),
            title: const Text('فئات السوبر ماركت'),
            onTap: () {
              Navigator.pop(context);
              // الانتقال لصفحة الفئات عبر الـ GoRouter
              // GoRouter.of(context).push(AppRouter.kCategoriesView);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_cart_outlined,
              color: ColorsData.primaryColor,
            ),
            title: const Text('سلة المشتريات'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.settings_outlined, color: Colors.grey),
            title: const Text('الإعدادات'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline, color: Colors.grey),
            title: const Text('عن التطبيق'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
