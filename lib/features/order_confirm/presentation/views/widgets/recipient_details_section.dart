import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/container_list_tile.dart';
import 'package:wassel/core/widgets/container_style_of_order_change_options.dart';

class RecipientDetailsSection extends StatefulWidget {
  const RecipientDetailsSection({super.key});

  @override
  State<RecipientDetailsSection> createState() =>
      _RecipientDetailsSectionState();
}

class _RecipientDetailsSectionState extends State<RecipientDetailsSection> {
  //! variable to recognize the user change name or phone or not
  bool isEditing = false;
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
            subTitle: "102838474(20+)",
            editAddress: isEditing ? 'إلغاء' : 'نغيير',
            onPressed: () {
              // Handle edit recipient name action
              setState(() {
                isEditing = !isEditing;
              });
            },
          ),

          //! if user change
          if (isEditing) ...[
            SizedBox(height: 20),
            ContainerStyleOfOrderChangeOptions(
              firstLabelText: 'اسم المستلم',
              firstKeyboardType: TextInputType.name,
              firstPrefixIconForLabel: Icon(Icons.person_add_alt_1_outlined),
              secondLabelText: 'رقم للتواصل',
              secondKeyboardType: TextInputType.phone,
              secondPrefixIconForLabel: Icon(Icons.phone_callback_outlined),
              thirdLabelText: "رقم ثاني ان وجد !",
              thirdKeyboardType: TextInputType.phone,
              thirdPrefixIconForLabel: Icon(Icons.phone_disabled_outlined),
              buttonText: 'حفظ',
              onPressed: (){
                
              },
            ),
          ],
        ],
      ),
    );
  }
}
