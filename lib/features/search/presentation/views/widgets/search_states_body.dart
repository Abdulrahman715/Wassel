import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/loading_style.dart';
import 'package:wassel/core/widgets/message/empty_message.dart';
import 'package:wassel/core/widgets/message/error_message.dart';
import 'package:wassel/core/widgets/sliver_grid_products_body.dart';
import 'package:wassel/features/search/presentation/manager/cubit/search_cubit.dart';

class SearchStatesBody extends StatelessWidget {
  const SearchStatesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return EmptyMessage(
            emptyMessage: 'ابدأ الكتابة للبحث عن منتجاتك المفضلة 🔍',
          );
        } else if (state is SearchSuccess) {
          if (state.searchProducts.isEmpty) {
            return EmptyMessage(emptyMessage: 'لا توجد نتائج للبحث 🔍');
          }
          return CustomScrollView(
            slivers: [
              SliverGridProductsBody(
                products: state.searchProducts,
                isLoading: false,
              ),
            ],
          );
        } else if (state is SearchLoading) {
          return LoadingStyle();
        } else if (state is SearchFailure) {
          return ErrorMessage(errMessage: 'حدث خطأ أثناء البحث، يرجى المحاولة لاحقًا');
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}