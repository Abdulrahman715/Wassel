import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/features/profile/presentation/views/widgets/main_profile_data.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.095,
        width:double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black45),
          borderRadius: BorderRadius.circular(40),
          color: ColorsData.iconBackground,
        ),
        child:MainProfileData(),
      ),
    );
  }
}
