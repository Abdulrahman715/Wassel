import 'package:flutter/material.dart';
// import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/core/widgets/container_list_tile.dart';

class RecipientDetailsSection extends StatelessWidget {
  const RecipientDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ContainerListTile(
            headlineText: " تفاصيل المستلم :",
            leading: const Icon(Icons.person, color: Colors.green),
            mainTitle: "محمد على",
            subTitle: "رقم الهاتف: 0123456789",
            editAddress: "تغيير الاسم او رقم الهاتف",
            onPressed: () {
              // Handle edit recipient name action
            },
          ),
        ],
      ),
    );
  }
}
