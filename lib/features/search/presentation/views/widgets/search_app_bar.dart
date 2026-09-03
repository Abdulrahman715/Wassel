import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text('ابحث عن اى شئ', style: Styles.textStyle25),
      centerTitle: true,
      leading: Icon(Icons.arrow_back_ios_new_outlined),
    );
  }
}
