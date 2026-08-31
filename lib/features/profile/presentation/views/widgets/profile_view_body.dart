import 'package:flutter/material.dart';
import 'package:wassel/features/profile/presentation/views/widgets/profile_header.dart';
import 'package:wassel/features/profile/presentation/views/widgets/profile_operations.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileHeader(),
        SizedBox(height: 10,),
        ProfileOperations()
      ],
    );
  }
}
