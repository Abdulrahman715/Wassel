import 'package:flutter/material.dart';
import 'package:wassel/features/profile/presentation/views/widgets/account_tile.dart';

class ProfileOperations extends StatelessWidget {
  const ProfileOperations({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          AccountTile(
            prefixIcon: Icons.person_pin_outlined,
            mainTileText: 'تفاصيل الملف الشخصي',
            subTileText: 'الاسم , الايميل , ......',
            onTap: () {},
          ),
          AccountTile(
            prefixIcon: Icons.group_add_outlined,
            mainTileText: 'دعوة أصدقاء',
            subTileText: 'اللينك ',
            onTap: () {},
            trailingIcon: Icons.add,
          ),
          AccountTile(
            prefixIcon: Icons.star_border,
            mainTileText: 'تقييم للابلكيشن',
            subTileText: 'قيم تجربتك مع التطبيق',
            onTap: () {},
          ),
          AccountTile(
            prefixIcon: Icons.info_outline,
            mainTileText: 'من نحن',
            subTileText: 'نبذة عن التطبيق',
            onTap: () {},
          ),
          // const Divider(), // خط فاصل بين الأقسام
          AccountTile(
            prefixIcon: Icons.contact_mail_outlined,
            mainTileText: 'تواصل معنا',
            subTileText: ' 1275938873 (20)+',
            onTap: () {},
          ),
          AccountTile(
            prefixIcon: Icons.list_alt,
            mainTileText: 'قواعد وشروط',
            subTileText: 'اهم شروط التطبيق',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
