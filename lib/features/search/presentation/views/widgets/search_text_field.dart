import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/custom_search_field.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSearchField(
      readOnly: false, 
      onTap: () {},
    );
  }
}
