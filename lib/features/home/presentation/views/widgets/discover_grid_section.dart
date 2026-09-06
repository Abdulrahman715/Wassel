import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/error_message.dart';
import 'package:wassel/core/utils/loading_style.dart';
import 'package:wassel/core/widgets/sliver_grid_products_body.dart';
import 'package:wassel/features/home/presentation/manager/cubit/home_random_products_cubit/home_random_products_cubit.dart';

class DiscoverGridSection extends StatelessWidget {
  const DiscoverGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeRandomProductsCubit, HomeRandomProductsState>(
      builder: (context, state) {
        if (state is HomeRandomProductsSuccess) {
          //! استدعاء الودجت المشتركة وتمرير البيانات الخاصة بالكيوبت هنا
          return SliverGridProductsBody(products: state.randomProducts);
        } else if (state is HomeRandomProductsFailure) {
          return SliverToBoxAdapter(
            child: ErrorMessage(errMessage: state.errMessage),
          );
        } else {
          return SliverToBoxAdapter(child: const LoadingStyle());
        }
      },
    );
  }
}
