import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/container_list_tile.dart';

class UserAddressSection extends StatelessWidget {
  const UserAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerListTile(
      headlineText: 'مكان الاستلام :',
      leading: const Icon(Icons.location_on, color: Colors.redAccent),
      mainTitle: "القاهرة , اكتوبر ",
      subTitle: "123 شارع المثال، المدينة، الدولة",
      editAddress: "تغيير العنوان",
      onPressed: () {
        // Handle edit address action
      },
    );
  }
}
