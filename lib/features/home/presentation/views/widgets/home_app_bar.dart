import 'package:flutter/material.dart';
import 'package:wassel/core/utils/asset_data.dart';
import 'package:wassel/core/utils/button_shape.dart';
import 'package:wassel/core/utils/colors_data.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: AppBar(
        toolbarHeight: 70,
        backgroundColor: ColorsData.whiteColor,
        elevation: 0,
        scrolledUnderElevation: 0, //! لمنع تغير اللون عند الـ Scroll

        leading: IconButton(
          style: ButtonShape.buttonShape(),
          icon: const Icon(Icons.sort),
          onPressed: () {
            //! هذا السطر يبحث عن أول Scaffold يحيط بهذا الـ Widget ويفتح القائمة الجانبية فوراً
            Scaffold.of(context).openDrawer();
          },
        ),

        title: Image.network(
          AssetData.subLogo,
          height: 80,
          fit: BoxFit.contain,
        ), // Replace with your logo image
        centerTitle: true,

        actions: [
          IconButton(
            style: ButtonShape.buttonShape(),
            icon: Badge(
              backgroundColor: ColorsData.whiteColor,
              smallSize: 10,
              child: const Icon(Icons.notifications_none),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
