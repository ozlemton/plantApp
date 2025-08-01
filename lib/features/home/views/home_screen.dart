import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/size_config.dart';
import '../bloc/blog_item/blog_item_cubit.dart';
import '../bloc/plant_category/plant_category_cubit.dart';
import '../data/repository/blog_item_repository.dart';
import '../data/repository/plant_category_repository.dart';
import 'blog_item_screen.dart';
import 'category_screen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              PlantCategoryCubit(PlantCategoryRepository(dio))
                ..fetchCategories(),
        ),
        BlocProvider(
          create: (_) => BlogItemCubit(BlogItemRepository(dio))..fetchBlogs(),
        ),
      ],
      child: Scaffold(
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(top: SizeConfig.isIOS ? 10 : 0),
                    child: Center(
                      child: Image.asset(
                        'assets/images/section.png',
                        width: SizeConfig.getProportionalWidth(360),
                        height: SizeConfig.getProportionalHeight(164),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.getProportionalHeight(12),
                      horizontal: SizeConfig.getProportionalWidth(16),
                    ),
                    child: Container(
                      width: SizeConfig.getProportionalWidth(320),
                      height: SizeConfig.getProportionalHeight(64),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.getProportionalWidth(12),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/premiumBox.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.getProportionalWidth(16),
                    ),
                    child: SizedBox(
                      height: SizeConfig.getProportionalHeight(200),
                      child: const BlogListView(),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.getProportionalWidth(16),
                    vertical: SizeConfig.getProportionalHeight(12),
                  ),
                  sliver: SliverFillRemaining(child: const CategoryListView()),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/tabBar.png',
                width: SizeConfig.screenWidth,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
