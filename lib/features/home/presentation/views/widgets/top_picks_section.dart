import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/error_message.dart';
import 'package:wassel/core/utils/loading_style.dart';
import 'package:wassel/core/widgets/product_card.dart';
import 'package:wassel/features/home/presentation/manager/cubit/home_top_products_cubit/home_top_products_cubit.dart';

class TopPicksSection extends StatelessWidget {
  const TopPicksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // عنوان القسم
        Text(
          ' اكثر المنتجات مبيعاً',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),

        // القائمة الأفقية
        BlocBuilder<HomeTopProductsCubit, HomeTopProductsState>(
          builder: (context, state) {
            if (state is HomeTopProductsSuccess) {
              return SizedBox(
                height: 220, // ارتفاع الكارت
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.topProducts.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 15),
                  itemBuilder: (context, index) {
                    return ProductCard(product: state.topProducts[index]);
                  },
                ),
              );
            } else if (state is HomeTopProductsFailure) {
              return ErrorMessage(errMessage: state.errMessage);
            } else {
              return const LoadingStyle();
            }
          },
        ),
      ],
    );
  }
}
