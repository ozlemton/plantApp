import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/size_config.dart';
import '../bloc/blog_item_cubit.dart';
import '../bloc/plant_category_cubit.dart';
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/section.png',
                    width: 360,
                    height: 164,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    bottom: 12,
                    left: 16,
                    right: 16,
                  ),
                  child: Container(
                    width: 320,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/premiumBox.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(height: 200, child: const BlogListView()),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: const CategoryListView(),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Image(
                image: const AssetImage('assets/images/tabBar.png'),
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
