import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/service/setup_service_locator.dart';
import 'package:wassel/features/search/data/repo/search_repo_impl.dart';
import 'package:wassel/features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:wassel/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
      child: Scaffold(
        // appBar: SearchAppBar(),
        body: SafeArea(child: SearchViewBody()),
      ),
    );
  }
}
