import 'package:go_router/go_router.dart';
import 'package:wassel/features/auth/presentation/views/login_view.dart';
import 'package:wassel/features/auth/presentation/views/register_view.dart';
import 'package:wassel/features/cart/presentation/views/cart_view.dart';
import 'package:wassel/features/categories/presentation/views/categories_view.dart';
import 'package:wassel/features/single_category/presentation/views/single_category_view.dart';
import 'package:wassel/features/home/presentation/views/home_view.dart';
import 'package:wassel/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:wassel/features/orders/presentation/views/orders_view.dart';
import 'package:wassel/features/profile/presentation/views/profile_view.dart';
import 'package:wassel/features/search/presentation/views/search_view.dart';
import 'package:wassel/features/splash/presentation/views/splash_view.dart';
import 'package:wassel/features/welcome/presentation/views/welcome_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kOnboardingView = '/onboardingView';
  static const kWelcomeView = '/welcomeView';
  static const kRegisterView = '/registerView';
  static const kLoginView = '/loginView';
  static const kHomeView = '/homeView';
  static const kOrdersView = '/ordersView';
  static const kCartView = '/CartView';
  static const kProfileView = '/profileView';
  static const kSingleCategoryView = '/singleCategoryView';
  static const kCategoriesView = '/categoriesView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kWelcomeView,
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kOrdersView,
        builder: (context, state) => const OrdersView(),
      ),
      GoRoute(path: kCartView, builder: (context, state) => const CartView()),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: kSingleCategoryView,
        builder: (context, state) => const SingleCategoryView(),
      ),
      GoRoute(
        path: kCategoriesView,
        builder: (context, state) => const CategoriesView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
