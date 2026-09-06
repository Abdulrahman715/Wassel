import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/error_message.dart';
import 'package:wassel/core/utils/loading_style.dart';
import 'package:wassel/core/widgets/product_card.dart';
import 'package:wassel/features/home/presentation/manager/cubit/home_random_products_cubit/home_random_products_cubit.dart';

class SliverGridProductsBody extends StatelessWidget {
  const SliverGridProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeRandomProductsCubit, HomeRandomProductsState>(
      builder: (context, state) {
        if (state is HomeRandomProductsSuccess) {
          return SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // عنصرين في كل صف
                mainAxisSpacing: 30, // المسافة الرأسية
                crossAxisSpacing: 15, // المسافة الأفقية
                childAspectRatio:
                    0.6, // نسبة العرض للطول (اضبطها لتناسب حجم الكارت)
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return ProductCard(product: state.randomProducts[index]);
              }, childCount: state.randomProducts.length),
            ),
          );
        } else if (state is HomeRandomProductsFailure) {
          return SliverToBoxAdapter(
            child: ErrorMessage(errMessage: state.errMessage),
          );
        } else {
          return SliverToBoxAdapter(
            child: const LoadingStyle(),
          );
        }
      },
    );
  }
}
