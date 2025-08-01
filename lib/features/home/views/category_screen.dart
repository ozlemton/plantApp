import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/size_config.dart';
import '../bloc/plant_category/plant_category_cubit.dart';
import '../bloc/plant_category/plant_category_state.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantCategoryCubit, PlantCategoryState>(
      builder: (context, state) {
        if (state.isLoading) {
          return SizedBox(
            height: SizeConfig.getProportionalHeight(40),
            child: const Center(child: CircularProgressIndicator()),
          );
        }
        if (state.error != null) {
          return Center(child: Text('Error: ${state.error}'));
        }
        return GridView.builder(
          padding: EdgeInsets.zero,
          itemCount: state.categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: SizeConfig.getProportionalWidth(16),
            mainAxisSpacing: SizeConfig.getProportionalHeight(16),
          ),
          itemBuilder: (context, index) {
            final category = state.categories[index];
            return Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6F6),
                borderRadius: BorderRadius.circular(
                  SizeConfig.getProportionalWidth(16),
                ),
                border: Border.all(
                  color: const Color(0x2929BB89),
                  width: SizeConfig.getProportionalWidth(0.5),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  SizeConfig.getProportionalWidth(16),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        category.image.url,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.getProportionalHeight(12),
                      left: SizeConfig.getProportionalWidth(12),
                      child: SizedBox(
                        width: SizeConfig.getProportionalWidth(85),
                        child: Text(
                          category.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: SizeConfig.getProportionalWidth(16),
                            height: 1.3125,
                            color: const Color(0xFF13231B),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
