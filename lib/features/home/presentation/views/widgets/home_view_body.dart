import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/home/presentation/views/widgets/categories_section.dart';
import 'package:wassel/features/home/presentation/views/widgets/discover_grid_section.dart';
import 'package:wassel/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:wassel/features/home/presentation/views/widgets/home_search_field.dart';
import 'package:wassel/features/home/presentation/views/widgets/suggested_home_content.dart';
import 'package:wassel/features/home/presentation/views/widgets/top_picks_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(), // تأثير التمرير
        slivers: [
          SliverToBoxAdapter(child: HomeAppBar()),
          SliverToBoxAdapter(child: HomeSearchField()),
          // مسافة صغيرة قبل القسم القادم
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: Text(' الاقسام', style: Styles.textStyle20),
          ),
          // مسافة صغيرة قبل القسم القادم
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(child: const CategoriesSection()),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(child: TopPicksSection()),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          // عنوان قسم الشبكة (اختيارات على ذوقك)
          const SliverToBoxAdapter(child: SuggestedHomeContent()),
          const DiscoverGridSection(),
          // مسافة إضافية في نهاية الشاشة حتى لا يغطي الـ BottomNavigationBar على آخر منتج
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
        ],
      ),
    );
  }
}
