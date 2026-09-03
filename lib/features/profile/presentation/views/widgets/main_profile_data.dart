import 'package:flutter/material.dart';
import 'package:wassel/core/utils/asset_data.dart';
import 'package:wassel/core/utils/styles.dart';

class MainProfileData extends StatelessWidget {
  const MainProfileData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          CircleAvatar(
            minRadius: 35,
            backgroundImage: NetworkImage(AssetData.avatarImage),
          ),

          SizedBox(width: 40),

          Column(
            children: [
              Text('احمد وائل ', style: Styles.textStyle20),
              SizedBox(height: 5),
              Text('ahmed@gmail.com', style: Styles.labelText),
            ],
          ),
        ],
      ),
    );
  }
}
