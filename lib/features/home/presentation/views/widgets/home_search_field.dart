import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/core/widgets/custom_search_field.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSearchField(
      readOnly: true,
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSearchView);
      },
    );
  }
}
