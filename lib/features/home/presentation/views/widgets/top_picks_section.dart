import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/error_message.dart';
import 'package:wassel/features/home/presentation/manager/cubit/home_top_products_cubit/home_top_products_cubit.dart';
import 'package:wassel/features/home/presentation/views/widgets/custom_top_picks_body.dart';

class TopPicksSection extends StatelessWidget {
  const TopPicksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // عنوان القسم
        const Text(
          'أكثر المنتجات مبيعاً',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),

        // القائمة الأفقية
        BlocBuilder<HomeTopProductsCubit, HomeTopProductsState>(
          builder: (context, state) {
            if (state is HomeTopProductsSuccess) {
              return CustomTopPicksBody(
                products: state.topProducts,
                isLoading: false,
              );
            } else if (state is HomeTopProductsFailure) {
              return ErrorMessage(errMessage: state.errMessage);
            } else {
              // حالة الـ Loading أو الـ Initial
              return const CustomTopPicksBody(
                products: null,
                isLoading: true,
                physics: NeverScrollableScrollPhysics(),
              );
            }
          },
        ),
      ],
    );
  }
}

