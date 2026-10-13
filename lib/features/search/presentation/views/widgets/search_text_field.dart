import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/widgets/custom_search_field.dart';
import 'package:wassel/features/search/presentation/manager/cubit/search_cubit.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSearchField(
      readOnly: false,
      onChanged: (query) {
        // 👈 استدعاء دالة البحث في الـ Cubit مع كل حرف يكتبه المستخدم
        BlocProvider.of<SearchCubit>(context).searchProducts(query: query);
      },
    );
  }
}
