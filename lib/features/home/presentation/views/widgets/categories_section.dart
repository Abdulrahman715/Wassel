import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/core/utils/error_message.dart';
import 'package:wassel/core/utils/loading_style.dart';
import 'package:wassel/features/home/presentation/manager/cubit/categories_cubit/categories_cubit.dart';
import 'package:wassel/features/home/presentation/manager/cubit/categories_cubit/categories_state.dart';
import 'package:wassel/features/home/presentation/views/widgets/category_item.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCategoriesCubit, HomeCategoriesState>(
      builder: (context, state) {
        // print('CURRENT STATE IS: ${state.runtimeType}'); // <--- اطبع الحالة هنا
        if (state is HomeCategoriesSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.2, // ارتفاع القسم
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: state.homeCategories.length,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                return CategoryItem(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kCategoriesView);
                  },
                  category: state.homeCategories[index],
                );
              },
            ),
          );
        } else if (state is HomeCategoriesFailure) {
          return ErrorMessage(errMessage: state.errMessage);
        } else {
          return LoadingStyle();
        }
      },
    );
  }
}
