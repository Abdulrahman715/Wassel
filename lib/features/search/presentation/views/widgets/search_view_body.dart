import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/core/widgets/sliver_grid_products_body.dart';
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

          Expanded(
            child: CustomScrollView(slivers: [SliverGridProductsBody()]),
          ),
        ],
      ),
    );
  }
}

//  Expanded(
//             child: BlocBuilder<SearchCubit, SearchState>(
//               builder: (context, state) {
//                 if (state is SearchSuccess) {
//                   return ListView.builder(
//                     itemCount: state.searchBooks.length,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: EdgeInsetsGeometry.symmetric(vertical: 4),
//                         child: CustomBestSellerItem(
//                           bookModel: state.searchBooks[index],
//                         ),
//                       );
//                     },
//                   );
//                 } else if (state is SearchFailure) {
//                   return CustomErrorMessage(message: state.errorMessage);
//                 } else if (state is SearchInitial) {
//                   return Center(
//                     child: Text(
//                       'Search for books, authors, genres...',
//                       style: Styles.textStyle25,
//                       textAlign: TextAlign.center,
//                     ),
//                   );
//                 } else {
//                   return ListView.builder(
//                     itemCount: 6,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: EdgeInsetsGeometry.symmetric(vertical: 4),
//                         child: CustomBookItemShimmer(),
//                       );
//                     },
//                   );
//                 }
//               },
//             ),
//           ),
