import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/search/presentation/views/widgets/search_states_body.dart';
import 'package:wassel/features/search/presentation/views/widgets/search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          SearchTextField(),
          SizedBox(height: 30),
          Text('Search Result', style: Styles.textStyle18),

          // عرض النتائج بناءً على الحالة
          Expanded(
            child: SearchStatesBody(),
          ),
        ],
      ),
    );
  }
}