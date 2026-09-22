import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/container_list_tile.dart';
import 'package:wassel/core/widgets/container_style_of_order_change_options.dart';

class UserAddressSection extends StatefulWidget {
  const UserAddressSection({super.key});

  @override
  State<UserAddressSection> createState() => _UserAddressSectionState();
}

class _UserAddressSectionState extends State<UserAddressSection> {
  //! متغير لمعرفة هل داس على تغيير العنوان ام لا
  bool isEditing = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerListTile(
          headlineText: 'مكان الاستلام :',
          leading: const Icon(Icons.location_on, color: Colors.redAccent),
          mainTitle: "القاهرة , اكتوبر ",
          subTitle: "123 شارع المثال، المدينة، الدولة",
          //! لتغيير شكل الايقونة بتاعة تغيير العنوان عند الضغط
          editAddress: isEditing ? 'إلغاء' : "تغيير العنوان",
          onPressed: () {
            // Handle edit address action
            setState(() {
              isEditing = !isEditing; // عكس الحالة عند الضغط
            });
          },
        ),

        if (isEditing) ...[
          SizedBox(height: 12),
          ContainerStyleOfOrderChangeOptions(
            firstLabelText: 'البلد / المحافظة',
            firstKeyboardType: TextInputType.name,
            firstPrefixIconForLabel: Icon(Icons.map_outlined),
            secondLabelText: 'المنطقة أو تفاصيل الشارع',
            secondKeyboardType: TextInputType.name,
            secondPrefixIconForLabel: Icon(Icons.location_city),
            thirdLabelText: 'علامة مميزة أن وجد !',
            thirdKeyboardType: TextInputType.name,
            thirdPrefixIconForLabel: Icon(Icons.location_city), 
            buttonText: 'حفظ العنوان',
            onPressed: (){
              
            },
          ),
        ],
      ],
    );
  }
}
