import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/error_message.dart';
import 'package:wassel/features/home/presentation/manager/cubit/categories_cubit/categories_cubit.dart';
import 'package:wassel/features/home/presentation/manager/cubit/categories_cubit/categories_state.dart';
import 'package:wassel/features/home/presentation/views/widgets/categories_section_body.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCategoriesCubit, HomeCategoriesState>(
      builder: (context, state) {
        // print('CURRENT STATE IS: ${state.runtimeType}'); // <--- اطبع الحالة هنا
        if (state is HomeCategoriesSuccess) {
          return CategoriesSectionBody(
            homeCategories: state.homeCategories,
            isLoading: false,
          );
        } else if (state is HomeCategoriesFailure) {
          return ErrorMessage(errMessage: state.errMessage);
        } else {
          return CategoriesSectionBody(homeCategories: null, isLoading: true);
        }
      },
    );
  }
}
