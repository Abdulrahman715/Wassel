import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:wassel/core/service/api_service.dart';
import 'package:wassel/features/auth/data/repo/auth_repo_impl.dart';
import 'package:wassel/features/categories/data/repo/categories_repo_impl.dart';
import 'package:wassel/features/home/data/repo/home_repo_impl.dart';
import 'package:wassel/features/search/data/repo/search_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      ),
    ),
  );

  getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<CategoriesRepoImpl>(CategoriesRepoImpl(getIt.get<ApiService>()));
}
